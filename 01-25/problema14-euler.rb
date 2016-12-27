@col={1=>1}

def colr(i)
  n, c = i, 0
  while @col[n].nil?
    c += 1
    n = n % 2 == 0 ? n / 2 : 3 * n + 1
  end
  @col[i] = c + @col[n]
end

n, l = 0,0
3.step(10**6,2) { |x| if colr(x) > l; n=x; l=colr(x); end; }
