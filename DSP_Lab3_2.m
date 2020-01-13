N = 4;
for i=1:N
    for l=1:N
        a=D(:,i);
        b=D(:,l);
        m(i,l) = sum(dot(a,b))/N
    end
end

        