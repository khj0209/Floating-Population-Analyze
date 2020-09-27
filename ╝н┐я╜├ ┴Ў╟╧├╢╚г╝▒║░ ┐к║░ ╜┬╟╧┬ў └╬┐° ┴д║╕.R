library(jsonlite)

valueJson<<-fromJSON('test2.json')
value<<-data.frame(valueJson)

result<<-subset(value,
                DATA.use_dt=='20200922',
                select=c(DATA.line_num,DATA.sub_sta_nm,DATA.alight_pasgr_num))

result_order<<-result[order(result$DATA.alight_pasgr_num),]

