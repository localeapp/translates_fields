module TranslatesFields
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def translates(field)
      serialize field

      send :define_method, "#{field}=".to_sym do |*args|
        if args.first.is_a?(Array)
          key     = args.first.shift
          options = args.first.pop
        else
          key     = args.first
          options = {}
        end
        write_attribute(field, [key, options])
      end

      send :define_method, field do
        return '' unless read_attribute(field).is_a?(Array)
        scope   = read_attribute(field).first
        options = read_attribute(field).last
        key     = "app.models.#{self.class.to_s.underscore}.attributes.#{field}.#{scope}".to_sym
        I18n.translate(key, options)
      end

    end
  end
end

ActiveRecord::Base.send(:include, TranslatesFields)