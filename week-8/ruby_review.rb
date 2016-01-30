# Numbers to English Words


# I worked on this challenge by myself.
# This challenge took me 4 hours.


# Pseudocode
# create a hash that takes integers as keys and their word equivalents as values


# Initial Solution

numbers_as_words = {0=>"zero",1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",
                    10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",
                     17=>"seventeen", 18=>"eighteen",19=>"nineteen",
                    20=>"twenty",21=>"twenty-one",22=>"twenty-two",23=>"twenty-three",24=>"twenty-four",25=>"twenty-five",26=>"twenty-six",27=>"twenty-seven",28=>"twenty-eight",29=>"twenty-nine",30=>"thirty",31=>"thirty-one",32=>"thirty-two",33=>"thirty-three",34=>"thirty-four",35=>"thirty-five",36=>"thirty-six",37=>"thirty-seven",38=>"thirty-eight",39=>"thirty-nine",40=>"forty",41=>"forty-one",42=>"forty-two",43=>"forty-three",44=>"forty-four",45=>"forty-five",46=>"forty-six",47=>"forty-seven",48=>"forty-eight",49=>"forty-nine",50=>"fifty",51=>"fifty-one",52=>"fifty-two",53=>"fifty-three",54=>"fifty-four",55=>"fifty-five",56=>"fifty-six",57=>"fifty-seven",58=>"fifty-eight",59=>"fifty-nine",60=>"sixty",61=>"sixty-one",62=>"sixty-two",63=>"sixty-three",64=>"sixty-four",65=>"sixty-five",66=>"sixty-six",67=>"sixty-seven",68=>"sixty-eight",69=>"sixty-nine",70=>"seventy",71=>"seventy-one",72=>"seventy-two",73=>"seventy-three",74=>"seventy-four",75=>"seventy-five",76=>"seventy-six",77=>"seventy-seven",78=>"seventy-eight",79=>"seventy-nine",80=>"eighty",81=>"eighty-one",82=>"eighty-two",83=>"eighty-three",84=>"eighty-four",85=>"eighty-five",86=>"eighty-six",87=>"eighty-seven",88=>"eighty-eight",89=>"eighty-nine",90=>"ninety",91=>"ninety-one",92=>"ninety-two",93=>"ninety-three",94=>"ninety-four",95=>"ninety-five",96=>"ninety-six",97=>"ninety-seven",98=>"ninety-eight",99=>"ninety-nine",100=>"one hundred"}

# print numbers_as_words[59]

# Refactored Solution

def number_to_words(number)
  string_number = number.to_s
  p string_number

  return 'zero' if number.zero?

  single_digit_numbers = {'1'=>"one",'2'=>"two",'3'=>"three",'4'=>"four",
                     '5'=>"five",'6'=>"six",'7'=>"seven",'8'=>"eight",'9'=>"nine"}
  double_digit_numbers = {'10'=>"ten",'11'=>"eleven",'12'=>"twelve",'13'=>"thirteen",'14'=>"fourteen",
                    '15'=>"fifteen",'16'=>"sixteen",'17'=>"seventeen", '18'=>"eighteen",'19'=>"nineteen"}

  ten_digits = {'2' => 'twenty', '3' => 'thirty', '4' => 'forty', '5' => 'fifty',
                '6' => 'sixty', '7' => 'seventy', '8' => 'eighty', '9' => 'ninety'}

  hundred = 'hundred'

  case number
    when 10..19
      return double_digit_numbers[string_number]
    when 20..99
      return ten_digits[string_number[0]] + "-" + single_digit_numbers[string_number[1]]
    when 99..999
      if double_digit_numbers.include?(string_number[-2,2])
        return single_digit_numbers[string_number[0]] + " " + hundred + " and " + double_digit_numbers[string_number[-2,2]]
        # for 3 digit numbers, checking if the last two digits are in the double_digit_numbers hash
     elsif string_number[1] == '0' && string_number[2] == '0'
        return single_digit_numbers[string_number[0]] + " " + hundred
      end
    else
      return single_digit_number[string_number]
  end
end

# p number_to_words(0)
# p number_to_words(15)
# p number_to_words(97)
# p number_to_words(115)
# p number_to_words(100)

# Reflection

# What concepts did you review or learn in this challenge?
# case/when, if/else, iteration (in a scrapped version of my solution), hashes

# What is still confusing to you about Ruby?
# Hm...I still get confused about the best way to use iteration in different situations-it seems like I'll get started down a good path and am either missing something or end up rabbit holing and have to go back to the drawing board.

# What are you going to study to get more prepared for Phase 1?
# Iteration.  Iterate all the things!