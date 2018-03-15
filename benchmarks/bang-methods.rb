require 'benchmark'

def merge!(array)
  array.inject({}) { |h, e| h.merge!(e => e) }
end

def merge(array)
  array.inject({}) { |h, e| h.merge(e => e) }
end

N = 10_000
array = (0..N).to_a

puts RUBY_DESCRIPTION

Benchmark.bm(10, "m VS m!") do |x|
  m_bang = x.report("merge!") { merge!(array) }
  m      = x.report("merge")  { merge(array)  }
  [m / m_bang]
end
