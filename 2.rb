## Задача №2:
#
# Ганс Грубер в это время пытается намайнить биткоины - чтобы сделать это ему нужно найти MD5 хэши,
# которые начинаются как минимум с 5 нулей.
# Значение, хэш которого нужно посчитать - это инпут (пользовательский ввод), за которым следует положительное число (1, 2, 3 итд).
#
# Например, для инпута abcdef результатом будет число 609043, потому что MD5 хэш для abcdef609043 начинается с 5 нулей (000001dbbfa...)
# и это минимальное такое число.
#
# Помогите Гансу найти это число.
#
# Требования к решению:
# - Инпут вводится пользователем (получение данных в коде через команду gets)
# - Результат (число) выводится через puts
#
#
## Решение:
require 'digest'
num = 0
st = gets.chomp
while(true)
  md5 = Digest::MD5.hexdigest (st + num.to_s)
  hash_t = md5.to_s
  if(hash_t[0] == "0" && hash_t[1] == "0" &&  hash_t[2] == "0" && hash_t[3] == "0" && hash_t[4] == "0")
    break
  end
  num += 1
end
puts num