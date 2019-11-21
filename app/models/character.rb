class Character < ApplicationRecord
  def self.scope_with_strip_heredoc(name)
    conditions = <<-SQL.strip_heredoc
      name = '#{name}'
    SQL

    where(conditions)
  end

  def self.scope_with_standard_heredoc(name)
    conditions = <<-SQL
      name = '#{name}'
    SQL

    where(conditions)
  end

  def self.scope_with_squiggle_heredoc(name)
    conditions = <<~SQL
      name = '#{name}'
    SQL

    where(conditions)
  end
end
