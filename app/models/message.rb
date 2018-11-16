require 'google/cloud/translate'
require 'pry'

class Message < ApplicationRecord
    belongs_to :user 
    belongs_to :channel 

    def start_translation(lang)
        text = "#{self.speech}"
        ENV["TRANSLATE_KEY"] = "AIzaSyDI9cv6__XAGHD5fRayK7_vDUAyupQvtvs"
        translate = Google::Cloud::Translate.new
        translation = translate.translate "#{text}", to: lang
        return translation.text
        
        # self.translation = translation.text
        # byebug
        # self.save
      # target = "#{self.translation}"
  end

end
