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
>1.若迴圈為奇數，向右與向下加上此時迴圈數，且數字每跑完一次第二個迴圈就會加1  
>2.若迴圈為偶數，向左與向上加上此時迴圈數，且數字每跑完一次第二個迴圈就會加1
>3.第一個迴圈跑到最後一次時:
>>(1) 若n為奇數，要多向右增加一個邊
>>(2) 若n為偶數，要多向左增加一個邊
