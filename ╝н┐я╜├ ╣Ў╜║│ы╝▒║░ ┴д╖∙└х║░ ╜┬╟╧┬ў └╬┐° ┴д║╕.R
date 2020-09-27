library(jsonlite)
library(dplyr)

valueJson<<-fromJSON('test3.json')
value<<-data.frame(valueJson)

result<<-subset(value,
                DATA.use_dt=='20200922',
                select=c(DATA.bus_route_no,DATA.bus_route_nm,DATA.bus_sta_nm,DATA.alight_pasgr_num))

result_order<<-result[order(result$DATA.bus_sta_nm,result$DATA.alight_pasgr_num),]