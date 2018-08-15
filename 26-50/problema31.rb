=begin
for x in (100).downto(90).step(5)
  puts x
end
=end

=begin

ways = 0
200.step(0,-200) do |a|
  a.step(0, -100) do |b|
    b.step(0, -50) do |c|
      c.step(0, -20) do |d|
        d.step(0, -10) do |e|
          e.step(0, -5) do |f|
            f.step(0, -2) do |g|
              g.step(0, -1) do |h|
                ways += 1 unless h == 0
              end
            end
          end
        end
      end
    end
  end
end
puts "\n\n########\nWays: #{ways}"

=end


target = 200
coinSizes = [ 1, 2, 5, 10, 20, 50, 100, 200 ]
#int[] ways; = new int[target+1];
ways = Array.new(201,0)
ways[0] = 1;
 
for i in (0..coinSizes.length)
  puts i
  for j in (coinSizes.length..target)
    ways[j] += ways[j - coinSizes[i]]
  end
end

puts ways

=begin
for (int i = 0; i < coinSizes.Length; i++) {
    for (int j = coinSizes[i]; j <= target; j++) {
        ways[j] += ways[j - coinSizes[i]];
    }
}
=end
