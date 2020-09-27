library(jsonlite)

valueJson<<-fromJSON('test1.json')
value<<-data.frame(valueJson)

result<<-subset(value,
                DATA.stdr_de_id=='20200920'& DATA.tmzon_pd_se!='1'& DATA.tmzon_pd_se!='2'& DATA.tmzon_pd_se!='3'& DATA.tmzon_pd_se!='4'& DATA.tmzon_pd_se!='5'& DATA.tmzon_pd_se!='6',
                select=c(DATA.adstrd_code_se,DATA.male_f25t29_lvpop_co,DATA.male_f30t34_lvpop_co,DATA.male_f35t39_lvpop_co, DATA.female_f25t29_lvpop_co, DATA.female_f30t34_lvpop_co, DATA.female_f35t39_lvpop_co))


