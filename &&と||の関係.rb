#   ## &&と|| の関係性
t1 = true
t2 = true
f1 = false
f2 = nil
# # p t1 && t2
# # p t1 && f1
# # p t1 && f2
p (t1 && t2) || (f1 && f2)
# p t1 && ( t2 || f1 ) && f2

## if文での条件分岐
