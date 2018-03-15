require 'benchmark'

class Metric
  attr_accessor :var

  def initialize(n)
    @n   = n
    @var = 22
  end

  def run
    Benchmark.bm(10) do |x|
      x.report("@var") { @n.times { @var } }
      x.report("var" ) { @n.times { var  } }
      x.report("@var =")     { @n.times {|i| @var = i     } }
      x.report("self.var =") { @n.times {|i| self.var = i } }
    end
  end
end

puts RUBY_DESCRIPTION

metric = Metric.new(100_000_000)
metric.run
