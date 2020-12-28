function movemtx(n)
ma = [];
ma = zeros(n);
mid = 0;
count1 = 0;
count2 = 0;
org = 1;
sum1 = 0;
sum2 = 0;

if mod(n, 2) == 0
    
    mid = n / 2;
else
    mid = floor(n / 2) + 1;
end

count1 = mid;
count2 = mid;

ma(count1, count2) = org;

%% 製造矩陣
for ii = 1:n - 1
    
    if mod(ii, 2) ~= 0
        
        for jj = 1:ii
            
            org = org + 1;
            ma(count1, count2 + jj) = org;
        end
        count2 = count2 + ii;
        
        for jj = 1:ii
            
            org = org + 1;
            ma(count1 + jj, count2) = org;
        end
        count1 = count1 + ii;

    end
    if mod(ii, 2) == 0
        
        for jj = 1:ii
            
            org = org + 1;
            ma(count1, count2 - jj) = org;
        end
        count2 = count2 - ii;
        
        for jj = 1:ii
            
            org = org + 1;
            ma(count1 - jj, count2) = org;
        end
        count1 = count1 - ii;
        
    end
    
    if ii == n - 1
        
        if mod(n - 1, 2) == 0
        
            for jj = 1:ii

                org = org + 1;
                ma(count1, count2 + jj) = org;
            end
        
        else
            
            for jj = 1:ii

                org = org + 1;
                ma(count1, count2 - jj) = org;
            end
        end
    end
    
end

%% 計算sumation method1
for ii = 1:n
    
    sum1 = sum1 + ma(ii, ii);    
    sum1 = sum1 + ma(n - ii + 1, ii);
    
end
sum1 = sum1 - ma(mid, mid);

%% 計算sumaiton method2
for ii = 1: n
    
    sum = 1;
    for jj = 1:ii

        sum = sum + 2 * (jj - 1);
        
    end
    sum2 = sum2 + sum;
    
    sum = 1;
    x = 0;
    for jj = 1:ii
        x = x + 4 * floor(jj / 2);
    end
    sum = sum + x;
    sum2 = sum2 + sum;
end
sum2 = sum2 - 1;


ma
sum1
sum2

%% 移動

for tt = 1:n^2
    
    mid = 0;
    count1 = 0;
    count2 = 0;
    org = n^2 + 1 - tt;
    
    if mod(n, 2) == 0
    
    mid = n / 2;
    else
        mid = floor(n / 2) + 1;
    end

    count1 = mid;
    count2 = mid;

    ma(count1, count2) = org;
    
    for ii = 1:n - 1
        
        if mod(ii, 2) ~= 0

            for jj = 1:ii
                
                if org >= n^2
                    org = 0;
                end
                org = org + 1;
                ma(count1, count2 + jj) = org;
            end
            count2 = count2 + ii;

            for jj = 1:ii
                
                if org >= n^2
                    org = 0;
                end
                org = org + 1;
                ma(count1 + jj, count2) = org;
            end
            count1 = count1 + ii;

        end
        if mod(ii, 2) == 0

            for jj = 1:ii
                
                if org >= n^2
                    org = 0;
                end
                org = org + 1;
                ma(count1, count2 - jj) = org;
            end
            count2 = count2 - ii;

            for jj = 1:ii
                
                if org >= n^2
                    org = 0;
                end
                org = org + 1;
                ma(count1 - jj, count2) = org;
            end
            count1 = count1 - ii;

        end

        if ii == n - 1

            if mod(n - 1, 2) == 0

                for jj = 1:ii
                if org >= n^2
                    org = 0;
                end

                    org = org + 1;
                    ma(count1, count2 + jj) = org;
                end

            else

                for jj = 1:ii
                if org >= n^2
                    org = 0;
                end

                    org = org + 1;
                    ma(count1, count2 - jj) = org;
                end
            end
        end

    end
    
    
    %% image
mac = ma;
mac(:, :, 1) = 1;
mac(:, :, 2) = 1;
mac(:, :, 3) = 1;

for ii = 1:n
    
    for jj = 1:n
        
        if is_prime(ma(ii, jj)) == 1
            
            mac(ii, jj, :) = 0;
            
        elseif is_prime(ma(ii, jj)) == 0
            
            mac(ii, jj, :) = 1;
        end
        
    end
end

image(mac);
pause(0.1);
end

function y = is_prime(n)
        
        res = 0;
        
        if 1 <= n & n <= 3
            
            res = 1;
            y = res;
        else

            for tt = 2:floor(sqrt(n))

                quo = 0;

                quo = n / tt;

                if quo == floor(quo)

                    res = 0;
                    y = res;
                    break;
                else

                    res = 1;
                    y = res;
                end
            end    
        end
    end
   
end

