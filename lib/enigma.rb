require 'date'

class Enigma
  attr_reader :message,
              :key,
              :date
  def initialize(message, key = rand(99999), date = Date.today)
    @message = message
    @key = key
    @date = date
    @character_map = {"1" => "a",
                      "2" => "b",
                      "3" => "c",
                      "4" => "d",
                      "5" => "e",
                      "6" => "f",
                      "7" => "g",
                      "8" => "h",
                      "9" => "i",
                      "10" => "j",
                      "11" => "k",
                      "12" => "l",
                      "13" => "m",
                      "14" => "n",
                      "15" => "o",
                      "16" => "p",
                      "17" => "q",
                      "18" => "r",
                      "19" => "s",
                      "20" => "t",
                      "21" => "u",
                      "22" => "v",
                      "23" => "w",
                      "24" => "x",
                      "25" => "y",
                      "26" => "z",
                      "27" => "0",
                      "28" => "1",
                      "29" => "2",
                      "30" => "3",
                      "31" => "4",
                      "32" => "5",
                      "33" => "6",
                      "34" => "7",
                      "35" => "8",
                      "36" => "9",
                      "37" => " ",
                      "38" => ".",
                      "39" => ",",
                      }
  end

  def encrypt(message,key,date)
    rotation_1 = key.slice(0,2).join('').to_i
    rotation_2 = key.slice(1,2).join('').to_i
    rotation_3 = key.slice(2,2).join('').to_i
    rotation_4 = key.slice(3,2).join('').to_i

    date = Time.now.strftime("%d%m%y").to_i ** 2
    date_string = date.to_s
    date_last_4 = date_string.slice(-4,date_string.length)

    offset_1 = date_last_4.chars[0]
    offset_2 = date_last_4.chars[1]
    offset_3 = date_last_4.chars[2]
    offset_4 = date_last_4.chars[3]

    total_change_1 = rotation_1 + offset_1
    total_change_2 = rotation_2 + offset_2
    total_change_3 = rotation_3 + offset_3
    total_change_4 = rotation_4 + offset_4

  end


end
