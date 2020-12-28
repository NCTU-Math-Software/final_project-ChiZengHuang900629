# final_project-ChiZengHuang900629
final_project-ChiZengHuang900629 created by GitHub Classroom
porject17.
==========

# general n*n matrix

input: n % dimension為n的矩陣  
output:   
>1.若n為奇數，則以(n/2 + 0.5, n/2 + 0.5)為中心向外順時針增加數字，形成n*n的矩陣  
>2.若n為偶數，則以(n/2, n/2)為中心向外順時針增加數字，形成n*n的矩陣  

## 作法:
1.若迴圈為奇數，向右與向下加上此時迴圈數，且數字每跑完一次第二個迴圈就會加1  
2.若迴圈為偶數，向左與向上加上此時迴圈數，且數字每跑完一次第二個迴圈就會加1  
3.第一個迴圈跑到最後一次時:  
>>(1) 若n為奇數，要多向右增加一個邊  
>>(2) 若n為偶數，要多向左增加一個邊  

# sumOfDiagonal_Method1

input: n % dimension為n的矩陣  
output: 對角線及反對角線總和  

## 作法:
1.利用做出的矩陣將作出的對角線及反對角線相加  

# sumOfDiagonal_Method2

input: n % dimension為n的矩陣  
output: 對角線及反對角線總和  

## 作法:
1.先算出對角線總和:   
>(1) 以1為初始值，每跑一次迴圈就加上2*i，i為跑第幾次，並且將數次紀錄與前一次算出的數相加   
>(2) 上述所算出的數再每跑一次迴圈後都會加入總和   
2.再算出反對角線的總和:  
>(1) 以1為初始值，每跑一次迴圈，數字就會加上4  
>(2) 將跑迴圈的數字加入總和   
3.將對角線及反對角線之總和相加   
