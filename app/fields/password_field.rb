require "administrate/field/base"

class PasswordField < Administrate::Field::Base
  def self.searchable?
    false
  end

  def truncate
    pretty_data.to_s[0...6]
  end

  private

  def pretty_data
    data.gsub(/./, "•") unless data.nil?
  end
end
