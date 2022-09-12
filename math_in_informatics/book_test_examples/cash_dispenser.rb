class ATM

  def initialize()
    @cash =  [0,0,0,0]
    @current_balance = 0
  end
  attr_accessor :current_balance, :cash
  def input(bill)
    @current_balance+=bill
    if bill == 5
      cash[0]+=1
    elsif bill == 10
      cash[1]+=1
    elsif bill == 50
      cash[2]+=1
    else
      cash[3]+=1
    end
  end
  def output(query_bill)
    qq = q
    tmp_cash = cash
    while cash[3]>0 && query_bill>cash[3]
      query_bill-=100
      cash[3]-=1
    end
    while cash[2]>0 && query_bill>cash[2]
      query_bill-=50
      cash[2]-=1
    end
    while cash[1]>0 && query_bill>cash[1]
      query_bill-=10
      cash[1]-=1
    end
    while cash[0]>0 && query_bill>cash[0]
      query_bill-=5
      cash[0]-=1
    end
    if query_bill==0
      @current_balance-=qq
      return true
    else
      cash = tmp_cash
      return false
    end
  end
  def check()
    return current_balance
  end
end


data = ATM.new()

data.current_balance =gets().to_i
while true
  cmd = gets().to_i
  if cmd == 1
    print(data.check())
    print("\n")
  elsif cmd == 2
    dollars = gets().to_i
    data.input(dollars)
  else
    request = gets().to_i
    if data.output(request)
      print("OK\n")
    else
      print("ERR\n")
    end
  end
end
