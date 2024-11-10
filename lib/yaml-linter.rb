require 'psych'

module YamlLinter
  extend self

  def lint(path)
    document = Psych.parse_file(path)

    errors = []
    document.each do |node|
      if node.mapping?
        keys = node.children.each_slice(2).map(&:first)
        duplicates = keys
          .group_by { |k| k.value }
          .select { |k, v| v.size > 1 }
        if duplicates.size > 0
          duplicates.each do |key, instances|
            locations = instances.map { |k| "line #{k.start_line} column #{k.start_column}" }
            errors << "Duplicated key '#{key}' found at: #{locations.join(', ')}"
          end
        end
      end
    end

    errors
  end
end
