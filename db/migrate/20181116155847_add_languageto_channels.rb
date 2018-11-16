class AddLanguagetoChannels < ActiveRecord::Migration[5.2]
  def change
      add_column :channels, :lang, :string
  end
end
