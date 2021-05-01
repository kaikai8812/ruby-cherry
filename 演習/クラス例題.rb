#駅とチケットのクラスを用意して、実装を開始する。
def test_gate
  umeda = Gate.new(:umeda)
  juso = Gate.new(:juso)

  ticket = Ticket.new(150)
  umeda.enter(ticket)
  assert juso.exit(ticket)
end

# 駅のクラスを作成
class Gate
  def initialize(name)
    @name = name
  end
end
