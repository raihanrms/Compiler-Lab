## Explanation
### Check the syntax of date
```
if we have to check syntax like dd/mm/yyy apply:
[0-9][0-9] \ / [0-9][0-9] \ / [0-9] [0-9] [0-9] [0-9]

But date should be in range, so apply:
([0-2][0-9] | 3 [0-1])  \ /  (0[1-9] | 1[0-2]) \ / ([1-2][0-9][0-9][0-9])
```

### Check validity of the date

#### -->  In months 01,03,05,07,08,10 &12 , there will be at most 31 days.
```
([0-2][0-9]|[3][0-1])\/((0(1|3|5|7|8))|(10|12))\/([1-2][0-9][0-9][-0-9]) 
```
#### --> In months 04,06,09 & 11 may have at most 30 days
```
([0-2][0-9]|30)\/((0(4|6|9))|11)\/([1-2][0-9][0-9][0-9])
```
#### -->February has 28 days (in linear and non-linear years)
```
([0-1][0-9]|2[0-8])\/02\/([1-2][0-9][0-9][0-9])
```
#### -->If February has a day 29, check whether it is leap year or not..!!
```c
29\/02\/([1-2][0-9][0-9][0-9])
 {
extract year value;
check whether it is a leap year;
}
```
#### -->Extract year value
```c
1.Iterate upto two "/" in date are over.(i.e.,in dd/mm/yyyy pass over two "/"s to reach at year value.
2. read all susequent characters (they all are part of year value - yyyy)

	while(yytext[i]!='/')i++;   //reach at first "/"
	i++;                        // increment pointer
	while(yytext[i]!='/')i++;   //reach at next "/"
	i++;                        // increment pointer
	while(i<yyleng)             // read all characters upto end of the string
	yr=(10*yr)+(yytext[i++]-'0');// extract integer value of year
```
#### --> Check whether it is Leap year or not:
```c
if(yr%4==0||(yr%100==0&&yr%400!=0))
```