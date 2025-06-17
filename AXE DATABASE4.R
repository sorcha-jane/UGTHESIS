install.packages("MASS")
install.packages("jtools")
install.packages("ggstance")
install.packages("broom")
install.packages("broom.mixed")
install.packages("stargazer")

require(RgoogleMaps)
require(ggmap)
require(ggplot2)
require(dplyr)
require(maps)
require(mapdata)
require(tidyverse)
require(jtools)
require(spdep)
require("MASS")
require("jtools")
require("ggstance")
require("broom")
require("broom.mixed")
reequire("stargazer")


AX<-data.frame(#Axes
  "Name"=c("TY1A.1"),
  "N"=c(1),
  "mat"=c("CopperAlloy"),
  "type"=c("1A"),
  "dat1"=c(NA),
  "dat2"=c(NA),
  "lat"=c(51.87556),
  "lon"=c(-1.17333)
)
AX
AX<-add_row(AX,Name="TY1A.2",N=1,mat="CopperAlloy",type="1A",dat1=NA,dat2=NA,lat=52.63272,lon=-1.13935)
AX<-add_row(AX,Name="TY1A.3",N=1,mat="CopperAlloy",type="1A",dat1=NA,dat2=NA,lat=51.86694,lon=1.00500)
AX<-add_row(AX,Name="TY1A.4",N=1,mat="CopperAlloy",type="1A",dat1=NA,dat2=NA,lat=52.90085,lon=0.88624)
AX<-add_row(AX,Name="TY1A.5",N=1,mat="CopperAlloy",type="1A",dat1=NA,dat2=NA,lat=52.46389,lon=0.47139)
AX<-add_row(AX,Name="TY1A.6",N=1,mat="CopperAlloy",type="1A",dat1=NA,dat2=NA,lat=52.35111,lon=1.39028)
AX<-add_row(AX,Name="TY1A.7",N=2,mat="CopperAlloy",type="1A",dat1=NA,dat2=NA,lat=51.35333,lon=-1.08222)
AX<-add_row(AX,Name="TY1A.9",N=1,mat="Lead",type="1A",dat1=NA,dat2=NA,lat=52.28750,lon=1.09222)
AX<-add_row(AX,Name="TY1A.10",N=2,mat="CopperAlloy",type="1A",dat1=NA,dat2=NA,lat=51.80893,lon=-1.22367)
AX<-add_row(AX,Name="TY1A.12",N=1,mat="CopperAlloy",type="1A",dat1=NA,dat2=NA,lat=52.35274,lon=0.52777)
AX<-add_row(AX,Name="TY1A.13",N=1,mat="CopperAlloy",type="1A",dat1=NA,dat2=NA,lat=51.15632,lon=-1.17204)
AX<-add_row(AX,Name="TY1A.14",N=1,mat="CopperAlloy",type="1A",dat1=NA,dat2=NA,lat=51.48587,lon=-0.80603)
AX<-add_row(AX,Name="TY1A.15",N=1,mat="CopperAlloy",type="1A",dat1=NA,dat2=NA,lat=52.75387,lon=0.39548)
AX<-add_row(AX,Name="TY1A.16",N=1,mat="CopperAlloy",type="1A",dat1=NA,dat2=NA,lat=50.84532,lon=-0.29399)
AX<-add_row(AX,Name="TY1A.17",N=1,mat="CopperAlloy",type="1A",dat1=NA,dat2=NA,lat=52.75360,lon=-0.97146)
AX<-add_row(AX,Name="TY1B.1",N=2,mat="CopperAlloy",type="1B",dat1=NA,dat2=NA,lat=50.93293,lon=-1.92285)
AX<-add_row(AX,Name="TY1B.3",N=1,mat="CopperAlloy",type="1B",dat1=NA,dat2=NA,lat=51.35744,lon=-1.08225)
AX<-add_row(AX,Name="TY1C.1",N=1,mat="CopperAlloy",type="1C",dat1=NA,dat2=NA,lat=51.98900,lon=-0.18821)
AX<-add_row(AX,Name="TY1C.2",N=1,mat="CopperAlloy",type="1C",dat1=NA,dat2=NA,lat=51.89056,lon=-0.83889)
AX<-add_row(AX,Name="TY1C.3",N=1,mat="CopperAlloy",type="1C",dat1=NA,dat2=NA,lat=52.31083,lon=-0.60778)
AX<-add_row(AX,Name="TY1C.4",N=2,mat="CopperAlloy",type="1C",dat1=NA,dat2=NA,lat=51.35744,lon=-1.08225)
AX<-add_row(AX,Name="TY1C.6",N=1,mat="CopperAlloy",type="1C",dat1=NA,dat2=NA,lat=51.80893,lon=-1.22367)
AX<-add_row(AX,Name="TY1C.7",N=1,mat="CopperAlloy",type="1C",dat1=NA,dat2=NA,lat=52.24431,lon=0.40655)
AX<-add_row(AX,Name="TY1C.8",N=1,mat="CopperAlloy",type="1C",dat1=NA,dat2=NA,lat=51.82381,lon=0.10254)
AX<-add_row(AX,Name="TY1C.9",N=1,mat="CopperAlloy",type="1C",dat1=NA,dat2=NA,lat=51.29535,lon=1.32544)
AX<-add_row(AX,Name="TY2.1",N=1,mat="CopperAlloy",type="2",dat1=NA,dat2=NA,lat=54.52972,lon=-1.67694)
AX<-add_row(AX,Name="TY2.2",N=1,mat="CopperAlloy",type="2",dat1=NA,dat2=NA,lat=50.70861,lon=-2.46861)
AX<-add_row(AX,Name="TY2.3",N=1,mat="CopperAlloy",type="2",dat1=NA,dat2=NA,lat=52.19806,lon=-1.68111)
AX<-add_row(AX,Name="TY2.4",N=1,mat="CopperAlloy",type="2",dat1=NA,dat2=NA,lat=50.89633,lon=-2.00297)
AX<-add_row(AX,Name-"TY2.5A",N=1,mat="CopperAlloy",type="2",dat1=NA,dat2=NA,lat=52.52329,lon=0.134636)
AX<-add_row(AX,Name="TY3A.1",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=51.79694,lon=-1.59528)
AX<-add_row(AX,Name="TY3A.2",N=2,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=53.13522,lon=-0.38710)
AX<-add_row(AX,Name="TY3A.4",N=3,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.4617,lon=-0.58699)
AX<-add_row(AX,Name="TY3A.7",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.57889,lon=1.28972)
AX<-add_row(AX,Name="TY3A.8",N=2,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=51.52073,lon=0.58578)
AX<-add_row(AX,Name="TY3A.10",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=51.88969,lon=0.89946)
AX<-add_row(AX,Name="TY3A.11",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.71111,lon=-1.09833)
AX<-add_row(AX,Name="TY3A.12",N=2,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=51.52635,lon=-1.29254)
AX<-add_row(AX,Name="TY3A.14",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.01716,lon=0.63945)
AX<-add_row(AX,Name="TY3A.15",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.63111,lon=-1.24778)
AX<-add_row(AX,Name="TY3A.16",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.37389,lon=0.48111)
AX<-add_row(AX,Name="TY3A.17",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=51.33944,lon=1.22889)
AX<-add_row(AX,Name="TY3A.18",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.11694,lon=0.715000)
AX<-add_row(AX,Name="TY3A.19",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.23083,lon=0.22222)
AX<-add_row(AX,Name="TY3A.20",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=51.72241,lon=-1.11831)
AX<-add_row(AX,Name="TY3A.21",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.125729,lon=0.306652)
AX<-add_row(AX,Name="TY3A.22",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.400604,lon=-0.590414)
AX<-add_row(AX,Name="TY3A.23",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=50.84468,lon=-0.78311)
AX<-add_row(AX,Name="TY3A.24",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.808204,lon=-0.873982)
AX<-add_row(AX,Name="TY3A.25",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.69312,lon=0.76695)
AX<-add_row(AX,Name="TY3A.26",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=51.92341,lon=-0.33475)
AX<-add_row(AX,Name="TY3A.27",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.08964,lon=-0.07565)
AX<-add_row(AX,Name="TY3A.28",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=51.83333,lon=-1.25000)
AX<-add_row(AX,Name="TY3A.29",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=51.65420,lon=-1.48570)
AX<-add_row(AX,Name="TY3A.30",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=51.53373,lon=-1.13638)
AX<-add_row(AX,Name="TY3A.31",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=51.23590,lon=-0.99872)
AX<-add_row(AX,Name="TY3A.32",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=53.39773,lon=-0.50353)
AX<-add_row(AX,Name="TY3A.33",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.27125,lon=1.27099)
AX<-add_row(AX,Name="TY3A.34",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.22216,lon=-0.05438)
AX<-add_row(AX,Name="TY3A.35",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=51.57965,lon=-1.27982)
AX<-add_row(AX,Name="TY3A.36",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=51.26715,lon=-1.98705)
AX<-add_row(AX,Name="TY3A.37",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=50.82713,lon=0.01484)
AX<-add_row(AX,Name="TY3A.38",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=53.39773,lon=-0.50353)
AX<-add_row(AX,Name="TY3A.39",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=51.70659,lon=-1.48042)
AX<-add_row(AX,Name="TY3A.40",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=52.46400,lon=1.22242)
AX<-add_row(AX,Name="TY3A.41",N=1,mat="CopperAlloy",type="3A",dat1=-NA,dat2=NA,lat=51.76012,lon=-1.39287)
AX<-add_row(AX,Name="TY3A.42",N=1,mat="CopperAlloy",type="3A",dat1=NA,dat2=NA,lat=51.98900,lon=-0.18821)
AX<-add_row(AX,Name="TY3B.1",N=1,mat="CopperAlloy",type="3B",dat1=NA,dat2=NA,lat=52.44500,lon=0.99417)
AX<-add_row(AX,Name="TY3B.2",N=2,mat="CopperAlloy",type="3B",dat1=NA,dat2=NA,lat=53.58389,lon=-0.33972)
AX<-add_row(AX,Name="TY3B.4",N=1,mat="CopperAlloy",type="3B",dat1=NA,dat2=NA,lat=52.87581,lon=-0.48590)
AX<-add_row(AX,Name="TY3B.5",N=1,mat="CopperAlloy",type="3B",dat1=NA,dat2=NA,lat=51.29167,lon=1.32611)
AX<-add_row(AX,Name="TY3B.6",N=1,mat="Unknown",type="3B",dat1=NA,dat2=NA,lat=53.66722,lon=-0.51806)
AX<-add_row(AX,Name="TY3B.7",N=1,mat="CopperAlloy",type="3B",dat1=NA,dat2=NA,lat=52.39972,lon=-0.53139)
AX<-add_row(AX,Name="TY3B.8",N=1,mat="CopperAlloy",type="3B",dat1=NA,dat2=NA,lat=53.11250,lon=-0.76139)
AX<-add_row(AX,Name="TY3B.9",N=1,mat="CopperAlloy",type="3B",dat1=NA,dat2=NA,lat=52.32034,lon=0.44177)
AX<-add_row(AX,Name="TY3B.10",N=1,mat="CopperAlloy",type="3B",dat1=NA,dat2=NA,lat=51.64516,lon=-1.00435)
AX<-add_row(AX,Name="TY3B.11",N=1,mat="Silver",type="3B",dat1=NA,dat2=NA,lat=51.65230,lon=-1.40877)
AX<-add_row(AX,Name="TY3B.12A",N=1,mat="CopperAlloy",type="3B",dat1=NA,dat2=NA,lat=50.84468,lon=-0.78311)
AX<-add_row(AX,Name="TY4.1",N=1,mat="CopperAlloy",type="4",dat1=NA,dat2=NA,lat=51.89888,lon=-1.15183)
AX<-add_row(AX,Name="TY4.2",N=1,mat="CopperAlloy",type="4",dat1=NA,dat2=NA,lat=51.65165,lon=-1.55684)
AX<-add_row(AX,Name="TY4.3",N=1,mat="Unknown",type="4",dat1=NA,dat2=NA,lat=52.83027,lon=-0.84205)
AX<-add_row(AX,Name="TY4.4",N=1,mat="CopperAlloy",type="4",dat1=NA,dat2=NA,lat=52.52217,lon=0.55227)
AX<-add_row(AX,Name="TY4.5",N=1,mat="CopperAlloy",type="4",dat1=NA,dat2=NA,lat=52.53654,lon=-1.28004)
AX<-add_row(AX,Name="TY4.6",N=1,mat="Lead",type="4",dat1=NA,dat2=NA,lat=52.09972,lon=1.05000)
AX<-add_row(AX,Name="TY4.7",N=1,mat="CopperAlloy",type="4",dat1=NA,dat2=NA,lat=51.80893,lon=-1.22367)
AX<-add_row(AX,Name="TY4.8",N=1,mat="CopperAlloy",type="4",dat1=NA,dat2=NA,lat=51.24748,lon=0.71051)
AX<-add_row(AX,Name="TY4.9",N=1,mat="CopperAlloy",type="4",dat1=NA,dat2=NA,lat=52.98457,lon=-0.55658)
AX<-add_row(AX,Name="TY4.10",N=1,mat="CopperAlloy",type="4",dat1=NA,dat2=NA,lat=52.24900,lon=-0.04668)
AX<-add_row(AX,Name="TY4.11",N=1,mat="CopperAlloy",type="4",dat1=NA,dat2=NA,lat=52.81171,lon=-0.85929)
AX<-add_row(AX,Name="TY4.12",N=1,mat="CopperAlloy",type="4",dat1=NA,dat2=NA,lat=52.75387,lon=0.39548)
AX<-add_row(AX,Name="TY4.13",N=1,mat="CopperAlloy",type="4",dat1=NA,dat2=NA,lat=54.430658,lon=-1.569894)
AX<-add_row(AX,Name="TY4.14",N=1,mat="CopperAlloy",type="4",dat1=NA,dat2=NA,lat=51.580717,lon=-1.481854)
AX<-add_row(AX,Name="TY4.15",N=1,mat="CopperAlloy",type="4",dat1=NA,dat2=NA,lat=52.98167,lon=-0.29996)
AX<-add_row(AX,Name="TY4.16",N=1,mat="Iron",type="4",dat1=NA,dat2=NA,lat=51.12748,lon=-2.47338)
AX<-add_row(AX,Name="TY4.17",N=1,mat="CopperAlloy",type="3B",dat1=NA,dat2=NA,lat=50.84468,lon=-0.78311)
AX<-add_row(AX,Name="TY5.1",N=2,mat="Iron",type="5",dat1=NA,dat2=NA,lat=51.12748,lon=-2.47338)
AX<-add_row(AX,Name="TYUN.1",N=1,mat="CopperAlloy",type=NA,dat1=NA,dat2=NA,lat=52.47639,lon=1.09056)
AX<-add_row(AX,Name="TYUN.2",N=1,mat="CopperAlloy",type=NA,dat1=NA,dat2=NA,lat=52.57333,lon=-0.34111)
AX<-add_row(AX,Name="TYUN.3",N=1,mat="CopperAlloy",type=NA,dat1=NA,dat2=NA,lat=52.18111,lon=1.36278)
AX<-add_row(AX,Name="TYUN.4",N=2,mat="Unknown",type=NA,dat1=NA,dat2=NA,lat=51.79019,lon=-0.12708)
AX<-add_row(AX,Name="TYUN.5",N=1,mat="Unknown",type=NA,dat1=NA,dat2=NA,lat=52.08222,lon=-2.83306)
AX<-add_row(AX,Name="TYUN.6",N=1,mat="Unknown",type=NA,dat1=NA,dat2=NA,lat=52.41756,lon=0.51804)
AX<-add_row(AX,Name="TYUN.7",N=1,mat="CopperAlloy",type=NA,dat1=NA,dat2=NA,lat=51.50273,lon=-2.26408)
AX<-add_row(AX,Name="TYUN.8",N=1,mat="Iron",type="UNKNOWN",dat1=NA,dat2=NA,lat=50.54738,lon=-4.90906)
AX<-add_row(AX,Name="TYUN.9",N=1,mat="CopperAlloy",type=NA,dat1=NA,dat2=NA,lat=51.26083,lon=1.13750)
AX<-add_row(AX,Name="TYUN.10",N=1,mat="Silver",type="UNKNOWN",dat1=NA,dat2=NA,lat=50.95222,lon=-1.83028)
AX<-add_row(AX,Name="TYUN.11",N=1,mat="CopperAlloy",type="UNKNOWN",dat1=NA,dat2=NA,lat=51.35744,lon=-1.08225)
AX<-add_row(AX,Name="TYUN.12",N=1,mat="Lead",type=NA,dat1=NA,dat2=NA,lat=51.42833,lon=0.32583)
AX<-add_row(AX,Name="TYUN.13",N=1,mat="Tin",type=NA,dat1=NA,dat2=NA,lat=51.72611,lon=-2.23306)
AX<-add_row(AX,Name="TYUN.14",N=1,mat="CopperAlloy",type="UNKNOWN",dat1=NA,dat2=NA,lat=51.17583,lon=-1.42917)
AX<-add_row(AX,Name="TYUN.15",N=1,mat="CopperAlloy",type=NA,dat1=NA,dat2=NA,lat=54.11667,lon=-0.53278)
AX<-add_row(AX,Name="TYUN.16",N=1,mat="Unknown",type="UNKNOWN",dat1=NA,dat2=NA,lat=52.31056,lon=1.54861)
AX<-add_row(AX,Name="TYUN.17",N=1,mat="CopperAlloy",type=NA,dat1=NA,dat2=NA,lat=50.60056,lon=-2.46750)
AX<-add_row(AX,Name="TYUN.18",N=1,mat="Unknown",type=NA,dat1=NA,dat2=NA,lat=51.87833,lon=-1.96194)
AX<-add_row(AX,Name="TYUN.19",N=1,mat="Unknown",type=NA,dat1=NA,dat2=NA,lat=52.66778,lon=-2.65194)
AX<-add_row(AX,Name="TYUN.20",N=1,mat="Silver",type="UNKNOWN",dat1=43,dat2=250,lat=51.06906,lon=-1.79541)
AX<-add_row(AX,Name="TYUN.21",N=1,mat="CopperAlloy",type="UNKNOWN",dat1=NA,dat2=NA,lat=53.27054,lon=-2.58624)
AX<-add_row(AX,Name="TYUN.22",N=1,mat="CopperAlloy",type="UNKNOWN",dat1=NA,dat2=NA,lat=52.39952,lon=-0.50226)
AX<-add_row(AX,Name="TYUN.23",N=1,mat="CopperAlloy",type="UNKNOWN",dat1=NA,dat2=NA,lat=52.49994,lon=-3.37142)
AX<-add_row(AX,Name="TYUN.24",N=1,mat="CopperAlloy",type="UNKNOWN",dat1=NA,dat2=NA,lat=52.67837,lon=-1.72041)
AX<-add_row(AX,Name="TYUK.25",N=1,mat="CopperAlloy",type=NA,dat1=NA,dat2=NA,lat=52.12611,lon=-1.00806)
AX<-add_row(AX,Name="TYUK.26",N=2,mat="Silver",type=NA,dat1=NA,dat2=NA,lat=52.12611,lon=-1.00806)
AX<-add_row(AX,Name="TYUK.27",N=1,mat="Iron",type="UNKNOWN",dat1=NA,dat2=NA,lat=51.12748,lon=-2.47338)
AX<-add_row(AX,Name-"TYUK.28A",N=1,mat="CopperAlloy",type="UNKNOWN",dat1=NA,dat2=NA,lat=52.52329,lon=0.134636)
AX

AX2<-AX
AX1<-filter(AX,AX$N==1)
AX2<-filter(AX,AX$N==2)
AX3<-filter(AX,AX$N==3)
AX4<-filter(AX,AX$N==4)
AXa<-bind_rows(AX1,AX2,AX2,AX3,AX3,AX3,AX4,AX4,AX4,AX4) #Duplicating records of duplicate axes


map<-map_data("world",region="UK")%>%filter(subregion=="Great Britain")

ggplot(AX,aes(x=lon,y=lat))+#ALL FINDS, MATERIAL & QUANTITY
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  geom_jitter(aes(size=(N),color=mat))+
  scale_size(breaks=c(1:4),range=c(0.4,1.5))

ggplot(filter(AX,type=="1A"|type=="1B"|type=="1C"),aes(x=lon,y=lat))+#TYPE 1 AND VARIATIONS
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  geom_jitter(aes(size=(N),color=mat))+
  scale_size(breaks=c(1:4),range=c(0.4,1.5))

ggplot(filter(AX,type=="1A"),aes(x=lon,y=lat))+#TYPE 1A
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  geom_jitter(aes(size=(N),color=mat))+
  scale_size(breaks=c(1:4),range=c(0.4,1.5))

ggplot(filter(AX,type=="1C"),aes(x=lon,y=lat))+#TYPE 1C
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  geom_jitter(aes(size=(N),color=mat))+
  scale_size(breaks=c(1:4),range=c(0.4,1.5))

ggplot(filter(AX,type=="3A"|type=="3B"),aes(x=lon,y=lat))+#TYPE 3 AND VARIATIONS
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  geom_jitter(aes(size=(N),color=mat))+
  scale_size(breaks=c(1:4),range=c(0.4,1.5))

ggplot(filter(AX,type=="3A"),aes(x=lon,y=lat))+#TYPE 3A
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  geom_jitter(aes(size=(N),color=mat))+
  scale_size(breaks=c(1:4),range=c(0.4,1.5))

ggplot(filter(AX,type=="3B"),aes(x=lon,y=lat))+#TYPE 3B
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  geom_jitter(aes(size=(N),color=mat))+
  scale_size(breaks=c(1:4),range=c(0.4,1.5))

ggplot(filter(AX,type=="4"),aes(x=lon,y=lat))+
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  geom_jitter(aes(size=(N),color=mat))+
  scale_size(breaks=c(1:4),range=c(0.4,1.5))


ggplot(filter(AX,is.na(type)==FALSE),aes(x=lon,y=lat))+#ALL FINDS, TYPE & QUANTITY
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  geom_jitter(aes(size=(N),color=type))+
  scale_size(breaks=c(1:4),range=c(0.4,1.5))

ggplot(AX,aes(x=lon,y=lat))+#ALL FINDS, DATE OF FIND
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  geom_count(data=subset(AX,!is.na(dat1)),aes(color=dat2))+
  scale_color_gradient(low="white",high="red")

ggplot(RS,aes(x=lon,y=lat))+ #RELIGIOUS & SETTLEMENTS
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  geom_jitter(color="steelblue3")+
  geom_jitter(data=MS,color="red")+
  scale_size(breaks=c(1:4),range=c(0.4,1.5))

#HEATMAPS

ggplot(AXa,aes(x=lon,y=lat))+#ALL FINDS, HEATMAP
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  stat_density_2d(aes(fill=..level..),geom="polygon",alpha=0.5)+
  scale_fill_gradient(low="grey25",high="gold2")


ggplot(data=subset(AXa,AXa$mat=="CopperAlloy"),aes(x=lon,y=lat))+
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  stat_density_2d(aes(fill=..level..),geom="polygon",alpha=0.5)+
  scale_fill_gradient(low="grey25",high="darkorange1")

ggplot(data=subset(AXa,AXa$mat=="Lead"),aes(x=lon,y=lat))+
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  stat_density_2d(aes(fill=..level..),geom="polygon",alpha=0.5)+
  scale_fill_gradient(low="grey25",high="grey80")

ggplot(data=subset(AXa,AXa$mat=="Silver"),aes(x=lon,y=lat))+
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  stat_density_2d(aes(fill=..level..),geom="polygon",alpha=0.5)+
  scale_fill_gradient(low="grey25",high="steelblue1")

ggplot(data=subset(AXa,type=="3A"|type=="3B"),aes(x=lon,y=lat))+#TYPE 3 AND VARIATIONS
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  stat_density_2d(aes(fill=..level..),geom="polygon",alpha=0.5)+
  scale_fill_gradient(low="grey25",high="lightgreen")

ggplot(data=subset(AXa,type=="1A"|type=="1B"|type=="1C"),aes(x=lon,y=lat))+#TYPE 1 AND VARIATIONS
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  stat_density_2d(aes(fill=..level..),geom="polygon",alpha=0.5)+
  scale_fill_gradient(low="grey25",high="lightcoral")

ggplot(data=subset(AXa,AXa$type=="4"),aes(x=lon,y=lat))+
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  stat_density_2d(aes(fill=..level..),geom="polygon",alpha=0.5)+
  scale_fill_gradient(low="grey25",high="aquamarine")

ggplot(data=subset(AXa,AXa$type=="UNKNOWN"),aes(x=lon,y=lat))+
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  stat_density_2d(aes(fill=..level..),geom="polygon",alpha=0.5)+
  scale_fill_gradient(low="grey25",high="aquamarine")

ggplot(data=RS,aes(x=lon,y=lat))+
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  stat_density_2d(aes(fill=..level..),geom="polygon",alpha=0.5)+
  scale_fill_gradient(low="grey25",high="steelblue3")

ggplot(data=MS,aes(x=lon,y=lat))+
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  stat_density_2d(aes(fill=..level..),geom="polygon",alpha=0.5)+
  scale_fill_gradient(low="grey25",high="red")

require(RColorBrewer)
AXmin<-select(AXa,mat,type)
AXfreq<-count(AXmin,mat,type)
AXfreq
#AXfreq<-filter(AXfreq,((mat!="Unknown")&(type!="UNKNOWN")))
AXfreq<-filter(AXfreq,is.na(type)==FALSE)
ggplot(AXfreq,aes(fill=mat,x=type,y=n))+
  geom_bar(position="fill",stat="identity")

ggplot(AXfreq,aes(fill=type,x=mat,y=n))+
  geom_bar(position="fill",stat="identity")+
  labs(x="Material of find",y="Proportion of finds (%)",title="Axe Type Distribution for each material",fill="Axe Type")+
  scale_y_continuous(labels=c("0","25","50","75","100"))+
  scale_fill_brewer(palette="Spectral")



CL<-data.frame(#Colonias
  "Name"=c(),
  "N"=c(),
  "lat"=c(),
  "lon"=c()
)
MS<-data.frame(#Major Settlements
  "Name"=c("Luguvalium"),
  "lon"=c(-2.94175),
  "lat"=c(54.89698),
  "civitas"=c(1),
  "fort"=c(1),
  "colonia"=c(0),
  "preroman"=c(1),
  "bigPR"=c(0),"forum"=c(0),"temple"=c(1),"basilica"=c(0),"bath"=c(1),"theatre"=c(0)
)
MS<-add_row(MS,Name="Isurium",lon=-1.38094,lat=54.09192,civitas=1,fort=1,colonia=0,preroman=1,bigPR=1,forum=1,temple=0,basilica=0,bath=0,theatre=1)
MS<-add_row(MS,Name="Eburacum",lon=-1.08711,lat=53.95702,civitas=1,fort=1,colonia=1,preroman=0,bigPR=0,forum=1,temple=1,basilica=1,bath=1,theatre=0)
MS<-add_row(MS,Name="Colonia Lindum",lon=-0.5405,lat=53.23321,civitas=0,fort=1,colonia=1,preroman=0,bigPR=0,forum=1,temple=1,basilica=1,bath=1,theatre=0)
MS<-add_row(MS,Name="Ratae",lon=-1.13706,lat=52.6354,civitas=0,fort=NA,colonia=0,preroman=1,bigPR=0,forum=1,temple=1,basilica=1,bath=1,theatre=0)
MS<-add_row(MS,Name="Viroconium",lon=-2.64326,lat=52.67481,civitas=0,fort=1,colonia=0,preroman=0,bigPR=0,forum=1,temple=1,basilica=1,bath=1,theatre=0)
MS<-add_row(MS,Name="Colonia Glevum",lon=-2.24826,lat=51.86032,civitas=0,fort=1,colonia=1,preroman=0,bigPR=0,forum=1,temple=0,basilica=1,bath=0,theatre=0)
MS<-add_row(MS,Name="Venta Silurum",lon=-2.768,lat=51.61163,civitas=1,fort=0,colonia=0,preroman=1,bigPR=1,forum=1,temple=1,basilica=1,bath=1,theatre=0)
MS<-add_row(MS,Name="Corinium",lon=-1.96521,lat=51.71403,civitas=1,fort=1,colonia=0,preroman=0,bigPR=0,forum=1,temple=0,basilica=1,bath=0,theatre=1)
MS<-add_row(MS,Name="Isca",lon=-3.53121,lat=50.72188,civitas=1,fort=1,colonia=0,preroman=1,bigPR=1,forum=1,temple=0,basilica=1,bath=1,theatre=0)
MS<-add_row(MS,Name="Durnovaria",lon=-2.43762,lat=50.71511,civitas=1,fort=1,colonia=0,preroman=NA,bigPR=NA,forum=0,temple=1,basilica=0,bath=0,theatre=1)
MS<-add_row(MS,Name="Venta Belgarum",lon=-1.31358,lat=51.06102,civitas=1,fort=0,colonia=0,preroman=0,bigPR=0,forum=1,temple=1,basilica=1,bath=0,theatre=0)
MS<-add_row(MS,Name="Calleva",lon=-1.08225,lat=51.35744,civitas=0,fort=0,colonia=0,preroman=1,bigPR=1,forum=1,temple=1,basilica=1,bath=1,theatre=1)
MS<-add_row(MS,Name="Noviomagus",lon=-0.78867,lat=50.83329,civitas=1,fort=1,colonia=0,preroman=0,bigPR=0,forum=0,temple=1,basilica=1,bath=1,theatre=1)
MS<-add_row(MS,Name="Londinium",lon=-0.09918,lat=51.51251,civitas=1,fort=1,colonia=0,preroman=0,bigPR=0,forum=1,temple=1,basilica=1,bath=1,theatre=1)
MS<-add_row(MS,Name="Verulamium",lon=-0.35858,lat=51.75292,civitas=0,fort=0,colonia=0,preroman=1,bigPR=1,forum=1,temple=1,basilica=1,bath=0,theatre=1)
MS<-add_row(MS,Name="Venta Icenorum",lon=1.28747,lat=52.58136,civitas=1,fort=0,colonia=0,preroman=0,bigPR=0,forum=0,temple=0,basilica=0,bath=0,theatre=0)
MS<-add_row(MS,Name="Colonia Camulodunum",lon=0.90068,lat=51.89083,civitas=1,fort=1,colonia=1,preroman=1,bigPR=1,forum=0,temple=1,basilica=1,bath=1,theatre=1)
MS<-add_row(MS,Name="Durovernum",lon=1.07838,lat=51.27704,civitas=0,fort=1,colonia=0,preroman=1,bigPR=1,forum=1,temple=1,basilica=1,bath=0,theatre=1)
ggplot(MS,aes(x=lon,y=lat))+
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  geom_point(color="steelblue")+
  scale_size(breaks=c(1:4),range=c(0.4,1.5))

distcalc<-function(subset){
  dist<-c()
  for(i in 1:length(AXa$lat)){
    dist[i]<-sqrt((AXa$lat[i]-subset$lat[1])^2+(AXa$lon[i]-subset$lon[1])^2)
    for(j in 1:length(subset$lat)){
      jdist<-sqrt((AXa$lat[i]-subset$lat[j])^2+(AXa$lon[i]-subset$lon[j])^2)
      if(jdist<dist[i]){
        dist[i]<-jdist
      }
    }
  }
  dist
}
AXa$CIVT<-distcalc(filter(MS,civitas==1))
AXa$FORT<-distcalc(filter(MS,fort==1))
AXa$COLN<-distcalc(filter(MS,colonia==1))
AXa$PRER<-distcalc(filter(MS,preroman==1))
AXa$BPRE<-distcalc(filter(MS,bigPR==1))
AXa$FORM<-distcalc(filter(MS,forum==1))
AXa$TEMP<-distcalc(filter(MS,temple==1))
AXa$BASI<-distcalc(filter(MS,basilica==1))
AXa$BATH<-distcalc(filter(MS,bath==1))
AXa$THEA<-distcalc(filter(MS,theatre==1))


dist<-c()
for(i in 1:length(AXa$lat)){
  dist[i]<-sqrt((AXa$lat[i]-MS$lat[1])^2+(AXa$lon[i]-MS$lon[1])^2)
  for(j in 1:length(MS$lat)){
    jdist<-sqrt((AXa$lat[i]-MS$lat[j])^2+(AXa$lon[i]-MS$lon[j])^2)
    if(jdist<dist[i]){
      dist[i]<-jdist
    }
  }
}
AXa$MSdist<-dist
AXa$MSdist<-AXa$MSdist*69
ggplot(AXa,aes(x=mat,y=dist,fill=mat))+
  stat_boxplot(geom="errorbar",width=0.3,position=position_dodge(0))+
  geom_boxplot(position=position_dodge(0),width=0.3,alpha=2/3,outlier.shape=NA)+
  geom_dotplot(aes(x=mat,y=dist),
               binaxis='y',stackdir="center",method="dotdensity",
               dotsize=0.08,binwidth=0.08,alpha=1/3)
ggplot(AXa,aes(x=type,y=dist,fill=type))+
  stat_boxplot(geom="errorbar",width=0.3,position=position_dodge(0))+
  geom_boxplot(position=position_dodge(0),width=0.3,alpha=2/3,outlier.shape=NA)+
  geom_dotplot(aes(x=type,y=dist),
               binaxis='y',stackdir="center",method="dotdensity",
               dotsize=0.08,binwidth=0.08,alpha=1/3)
ggplot(AXa,aes(x=dist))+
  geom_histogram(alpha=0.5)

FT<-data.frame(#Forts & outposts
  "Name"=c(),
  "lat"=c(),
  "lon"=c()
)
FT<-add_row(FT,Name="++++",lat=0,lon=0)
FT<-add_row(FT,Name="++++",lat=0,lon=0)
FT<-add_row(FT,Name="++++",lat=0,lon=0)
FT<-add_row(FT,Name="++++",lat=0,lon=0)
FT<-add_row(FT,Name="++++",lat=0,lon=0)
FT<-add_row(FT,Name="++++",lat=0,lon=0)
FT<-add_row(FT,Name="++++",lat=0,lon=0)
FT<-add_row(FT,Name="++++",lat=0,lon=0)
FT<-add_row(FT,Name="++++",lat=0,lon=0)

RS<-data.frame(#Sanctuaries/Temples/Religious Sites
  "Name"=c("Caernarfon Mithraeum"),
  "lon"=c(-4.26241),
  "lat"=c(53.13717)
)
RS<-add_row(RS,Name="Minerva’s Shrine Chester",lon=-2.88944,lat=53.18426)
RS<-add_row(RS,Name="Temple Forden Gaer",lon=-3.16154,lat=52.58604)
RS<-add_row(RS,Name="Gwehelog Fawr Monmouthshire",lon=-2.92357,lat=51.72209)
RS<-add_row(RS,Name="Mithraeum Castlesteads",lon=-2.7637,lat=54.96373)
RS<-add_row(RS,Name="Mithraeum Housesteads Temple 3",lon=-2.32911,lat=55.01025)
RS<-add_row(RS,Name="Mithraeum Carrawburgh",lon=-2.22254,lat=55.03385)
RS<-add_row(RS,Name="Mithraeum Rudchester",lon=-1.82863,lat=55.0015)
RS<-add_row(RS,Name="Scargill Moor Scargill",lon=-2.0046,lat=54.48894)
RS<-add_row(RS,Name="Thistleton",lon=-0.65416,lat=52.74451)
RS<-add_row(RS,Name="Collyweston",lon=-0.5144,lat=52.59369)
RS<-add_row(RS,Name="Brigstock",lon=-0.58699,lat=52.4617)
RS<-add_row(RS,Name="Coleshill",lon=-1.7141,lat=52.51204)
RS<-add_row(RS,Name="Hockwold Cum Wilton",lon=0.48283,lat=52.47141)
RS<-add_row(RS,Name="Crownthorpe Wicklewood",lon=1.08088,lat=52.58352)
RS<-add_row(RS,Name="Gosbecks",lon=0.85673,lat=51.86686)
RS<-add_row(RS,Name="Harlow",lon=0.12708,lat=51.79019)
RS<-add_row(RS,Name="Mithraeum London",lon=-0.09164,lat=51.51263)
RS<-add_row(RS,Name="Southfleet",lon=0.32543,lat=51.42806)
RS<-add_row(RS,Name="Aylesford",lon=0.50789,lat=51.32105)
RS<-add_row(RS,Name="Castle Fields Worth",lon=1.34452,lat=51.24904)
RS<-add_row(RS,Name="Titsey",lon=0.03585,lat=51.27589)
RS<-add_row(RS,Name="Chanctonbury Ring Washington",lon= -0.38162,lat=50.89653)
RS<-add_row(RS,Name="Farley Heath",lon= -0.49632,lat=51.19365)
RS<-add_row(RS,Name="Wanborough",lon=-0.68642,lat=51.23731)
RS<-add_row(RS,Name="Bosham",lon=-0.85071,lat=50.84004)
RS<-add_row(RS,Name="Weycock Hill",lon=-0.81809,lat=51.49301)
RS<-add_row(RS,Name="Bourton Grounds Buckingham",lon=-0.93943,lat=51.99166)
RS<-add_row(RS,Name="Woodeaton Islip",lon=-1.22367,lat=51.80893)
RS<-add_row(RS,Name="Frilford",lon=-1.36698,lat=51.66324)
RS<-add_row(RS,Name="Chedworth temple",lon=-1.91262,lat=51.81812)
RS<-add_row(RS,Name="Lydney",lon=-2.55744,lat=51.72147)
RS<-add_row(RS,Name="West Hill Uley,",lon=-2.30668,lat=51.69565)
RS<-add_row(RS,Name="Nettleton",lon=-2.25777,lat=51.49076)
RS<-add_row(RS,Name="Pagans Hill Chew Stoke",lon=-2.63727,lat=51.36079)
RS<-add_row(RS,Name="Henley Wood",lon=-2.8022,lat=51.3831)
RS<-add_row(RS,Name="Lamyatt Beacon Lamyat",lon=-2.47363,lat=51.12394)
RS<-add_row(RS,Name="Cold Kitchen Hill",lon=-2.24438,lat=51.14101)
RS<-add_row(RS,Name="Maiden Castle temple",lon=-2.467,lat=50.69495)
RS<-add_row(RS,Name="Jordan Hill",lon=-2.42712,lat=50.63755)
RS<-add_row(RS,Name="Hayling Island,",lon=-0.97254,lat=50.82193)
RS<-add_row(RS,Name="Brean Down Brean",lon=-3.01551,lat=51.32421)
RS<-add_row(RS,Name="Arthur’s Oon Stenhouse",lon=-3.80016,lat=56.02405)
RS<-add_row(RS,Name="Mithraeum Inveresk",lon=-3.05466,lat=55.93654)
ggplot(RS,aes(x=lon,y=lat))+
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  geom_point(color="steelblue")+
  scale_size(breaks=c(1:4),range=c(0.4,1.5))

dist<-c()
for(i in 1:length(AXa$lat)){
  dist[i]<-sqrt((AXa$lat[i]-RS$lat[1])^2+(AXa$lon[i]-RS$lon[1])^2)
  for(j in 1:length(RS$lat)){
    jdist<-sqrt((AXa$lat[i]-RS$lat[j])^2+(AXa$lon[i]-RS$lon[j])^2)
    if(jdist<dist[i]){
      dist[i]<-jdist
    }
  }
}
AXa$RSdist<-dist
AXa$RSdist<-AXa$RSdist*69
ggplot(AXa,aes(x=mat,y=dist,fill=mat))+
  stat_boxplot(geom="errorbar",width=0.3,position=position_dodge(0))+
  geom_boxplot(position=position_dodge(0),width=0.3,alpha=2/3,outlier.shape=NA)+
  geom_dotplot(aes(x=mat,y=dist),
               binaxis='y',stackdir="center",method="dotdensity",
               dotsize=0.08,binwidth=0.08,alpha=1/3)
ggplot(AXa,aes(x=type,y=dist,fill=type))+
  stat_boxplot(geom="errorbar",width=0.3,position=position_dodge(0))+
  geom_boxplot(position=position_dodge(0),width=0.3,alpha=2/3,outlier.shape=NA)+
  geom_dotplot(aes(x=type,y=dist),
               binaxis='y',stackdir="center",method="dotdensity",
               dotsize=0.08,binwidth=0.08,alpha=1/3)
ggplot(AXa,aes(x=RSdist))+
  geom_histogram(alpha=0.25,fill="blue")+
  geom_histogram(aes(x=MSdist),alpha=0.25,fill="red")
summary(lm(data=AXa,MSdist~RSdist+type))


dist<-c()
name<-c()
for(i in 1:length(AXa$lat)){
  name[i]<-RS$Name[1]
  dist[i]<-sqrt((AXa$lat[i]-RS$lat[1])^2+(AXa$lon[i]-RS$lon[1])^2)
  for(j in 1:length(RS$lat)){
    jname<-RS$Name[j]
    jdist<-sqrt((AXa$lat[i]-RS$lat[j])^2+(AXa$lon[i]-RS$lon[j])^2)
    if(jdist<dist[i]){
      dist[i]<-jdist
      name[i]<-jname
    }
  }
}
AXa$RSname<-name
dist<-c()
name<-c()
for(i in 1:length(AXa$lat)){
  name[i]<-MS$Name[1]
  dist[i]<-sqrt((AXa$lat[i]-MS$lat[1])^2+(AXa$lon[i]-MS$lon[1])^2)
  for(j in 1:length(MS$lat)){
    jname<-MS$Name[j]
    jdist<-sqrt((AXa$lat[i]-MS$lat[j])^2+(AXa$lon[i]-MS$lon[j])^2)
    if(jdist<dist[i]){
      dist[i]<-jdist
      name[i]<-jname
    }
  }
}
AXa$MSname<-name

AXa$mat[AXa$MSname=="Londinium"]
MS<-rename(MS,MSname=Name)
AXtest<-full_join(AXa,MS,by="MSname")
plot_coefs(lm(data=AXtest,MSdist~civitas+fort+colonia+preroman+bigPR+forum+temple+basilica+bath+theatre))
plot_coefs(lm(data=AXtest,RSdist~civitas+fort+colonia+preroman+bigPR+forum+temple+basilica+bath+theatre))

require(geojsonio)
require(sp)
require(broom)
places1<-geojson_read("https://raw.githubusercontent.com/klokantech/roman-empire/master/data/places_high.geojson",what="sp")
places2<-geojson_read("https://raw.githubusercontent.com/klokantech/roman-empire/master/data/places_medium.geojson",what="sp")
places3<-geojson_read("https://raw.githubusercontent.com/klokantech/roman-empire/master/data/places_low.geojson",what="sp")
placesA<-rbind(places1,places2,places3)

placesA<-subset(placesA,placesA@coords[,2]>50)
placesA<-subset(placesA,placesA@coords[,1]<2)
placesA<-subset(placesA,placesA@coords[,1]>-6)
placesA<-subset(placesA,!(placesA@coords[,1]>1&placesA@coords[,2]<51))
plot(placesA)
View(placesA@data)

length(subset(placesA,placesA@data$type==13))
FRT<-subset(placesA,(placesA@data$type==17|placesA@data$type==18))
plot(FRT)
SET<-subset(placesA,(placesA@data$type==11|placesA@data$type==12|placesA@data$type==13))
plot(SET)
OPP<-subset(placesA,(placesA@data$type==31))
plot(OPP)
TMP<-subset(placesA,(placesA@data$type==61))
plot(TMP)
MJS<-subset(placesA,(placesA@data$type==11))
plot(MJS)
MNS<-subset(placesA,(placesA@data$type==12))
plot(MNS)
length(OPP)

kdeFRT<-kde2d(x=FRT@coords[,1],y=FRT@coords[,2],n=100,lims=c(range(-5,2),range(50,58)))
contour(kdeFRT,xlim=c(-5,2),ylim=c(50,58))
kdeSET<-kde2d(x=SET@coords[,1],y=SET@coords[,2],n=100,lims=c(range(-5,2),range(50,58)))
contour(kdeSET,xlim=c(-5,2),ylim=c(50,58))
kdeTMP<-kde2d(x=TMP@coords[,1],y=TMP@coords[,2],n=100,lims=c(range(-5,2),range(50,58)))
contour(kdeTMP,xlim=c(-5,2),ylim=c(50,58))
kdeOPP<-kde2d(x=OPP@coords[,1],y=OPP@coords[,2],n=100,lims=c(range(-5,2),range(50,58)))
contour(kdeOPP,xlim=c(-5,2),ylim=c(50,58))
kdeCIV<-kdeSET
kdeCIV$z<-kdeSET$z*kdeOPP$z
contour(kdeCIV,xlim=c(-5,2),ylim=c(50,58))
kdeBRY<-kdeSET
kdeBRY$z<-(kdeSET$z-kdeOPP$z)
contour(kdeBRY,xlim=c(-5,2),ylim=c(50,58))

kdeMJS<-kde2d(x=MJS@coords[,1],y=MJS@coords[,2],n=100,lims=c(range(-5,2),range(50,58)))
contour(kdeMJS,xlim=c(-5,2),ylim=c(50,58))
kdeMNS<-kde2d(x=MNS@coords[,1],y=MNS@coords[,2],n=100,lims=c(range(-5,2),range(50,58)))
contour(kdeMNS,xlim=c(-5,2),ylim=c(50,58))

kde1<-kde2d(AXa$lon,AXa$lat,n=100,lims=c(range(-5,2),range(50,58)))
contour(kde1,xlim=c(-5,2),ylim=c(50,58))


unique(AXa$type)
length(filter(AXa,type=="4")$type)
for(i in 1:length(unique(AXa$type))){
  print(unique(AXa$type)[i])
  print(length(filter(AXa,type==unique(AXa$type)[i])$type))
}
for(i in 1:length(unique(AXa$mat))){
  print(unique(AXa$mat)[i])
  print(length(filter(AXa,mat==unique(AXa$mat)[i])$mat))
}
kdeT1<-kde2d(filter(AXa,type=="1A"|type=="1B"|type=="1C")$lon,filter(AXa,type=="1A"|type=="1B"|type=="1C")$lat,n=100,lims=c(range(-5,2),range(50,58)))
kdeT3<-kde2d(filter(AXa,type=="3A"|type=="3B")$lon,filter(AXa,type=="3A"|type=="3B")$lat,n=100,lims=c(range(-5,2),range(50,58)))
kdeT4<-kde2d(filter(AXa,type=="4")$lon,filter(AXa,type=="4")$lat,n=100,lims=c(range(-5,2),range(50,58)))
kdeTUK<-kde2d(filter(AXa,type=="UNKNOWN")$lon,filter(AXa,type=="UNKNOWN")$lat,n=100,lims=c(range(-5,2),range(50,58)))
contour(kdeT1A)

require(elevatr)
require(rgdal)
xc<-c()
for(i in 1:100){
  xc<-c(xc,kdeBRY$x)
}
yc<-c()
for(i in 1:100){
  for(j in 1:100){
    yc[(i-1)*100+j]<-kdeBRY$y[i]
  }
}
UK<-data.frame(xc,yc)
UKel<-get_elev_point(UK,prj="EPSG:4326",src="aws",k=5)
UKel$elevation
UKel<-subset(UKel,UKel@data$elevation>0)
plot(UKel)
kdeUK<-kde2d(x=UKel@coords[,1],y=UKel@coords[,2],n=100)

UKel2<-subset(UKel,UKel@coords[,2]<56)
UKcoords<-c()
for(i in 1:length(UKel2@coords[,1])){
  UKcoords[i]<-paste(round(UKel2@coords[,1][i],3),round(UKel2@coords[,2][i],3),sep=" ")
}
UKcoords
c(kdeUK$z)
GRIDcoords<-c()
for(i in 1:length(kdeFRT$x)){
  for(j in 1:length(kdeFRT$y)){
    GRIDcoords[(i-1)*100+j]<-paste(round(kdeFRT$x[j],3),round(kdeFRT$y[i],3),sep=" ")
  }
}
GRIDcoords
UKgrid<-ifelse(GRIDcoords%in%UKcoords,1,0)
UKgrid

PredictiveModels<-data.frame(
  "N"=c(1:10000),
  "AXE"=c(kde1$z),
  "FRT"=c(kdeFRT$z),
  "SET"=c(kdeSET$z),
  "TMP"=c(kdeTMP$z),
  "OPP"=c(kdeOPP$z),
  "CIV"=c(kdeCIV$z),
  "BRY"=c(kdeBRY$z),
  "MJS"=c(kdeMJS$z),
  "MNS"=c(kdeMNS$z),
  "T1"=c(kdeT1$z),
  "T3"=c(kdeT3$z),
  "T4"=c(kdeT4$z),
  "TUK"=c(kdeTUK$z),
  "UK"=c(UKgrid)
)
PredictiveModels2<-filter(PredictiveModels,UK==1)


lmAXE<-lm(data=PredictiveModels,AXE~FRT+TMP+OPP+MNS+MJS+OPP*MJS)
lmAXE1<-lm(data=PredictiveModels,AXE~FRT+TMP+OPP+MNS+MJS)
lmAXE2<-lm(data=PredictiveModels,AXE~FRT+TMP+OPP+SET)
summary(lmAXE)
plot_coefs(lmAXE2,lmAXE1,lmAXE)
kdeAlm<-kdeSET
kdeAlm$z<-lmAXE[1]$coefficients[1]+lmAXE[1]$coefficients[2]*kdeFRT$z+lmAXE[1]$coefficients[3]*kdeTMP$z+lmAXE[1]$coefficients[4]*kdeOPP$z+lmAXE[1]$coefficients[5]*kdeMNS$z+lmAXE[1]$coefficients[6]*kdeMJS$z
kdeAlm$z<-lmAXE[1]$coefficients[1]+lmAXE[1]$coefficients[2]*kdeFRT$z+lmAXE[1]$coefficients[3]*kdeTMP$z+lmAXE[1]$coefficients[4]*kdeOPP$z+lmAXE[1]$coefficients[5]*kdeMNS$z+lmAXE[1]$coefficients[6]*kdeMJS$z+lmAXE[1]$coefficients[7]*kdeMJS$z*kdeOPP$z
contour(kdeAlm,xlim=c(-5,2),ylim=c(50,58))
contour(kde1,xlim=c(-5,2),ylim=c(50,58))

lmAXE<-lm(data=PredictiveModels,AXE~FRT+TMP+OPP+SET+OPP*SET)
summary(lmAXE)
plot_coefs(lmAXE)
kdeAlm$z<-(lmAXE[1]$coefficients[1]+lmAXE[1]$coefficients[2]*kdeFRT$z+lmAXE[1]$coefficients[3]*kdeTMP$z+lmAXE[1]$coefficients[4]*kdeOPP$z+lmAXE[1]$coefficients[5]*kdeSET$z)*2
kdeAlm$z<-lmAXE[1]$coefficients[1]+lmAXE[1]$coefficients[2]*kdeFRT$z+lmAXE[1]$coefficients[3]*kdeTMP$z+lmAXE[1]$coefficients[4]*kdeOPP$z+lmAXE[1]$coefficients[5]*kdeSET$z+lmAXE[1]$coefficients[6]*kdeSET$z*kdeOPP$z
contour(kdeAlm,xlim=c(-5,2),ylim=c(50,58))
contour(kde1,xlim=c(-5,2),ylim=c(50,58))



lmT1<-lm(data=PredictiveModels,T1~AXE+FRT+SET+TMP+OPP)
summary(lmT1)
plot_coefs(lmT1)
lmT3<-lm(data=PredictiveModels,T3~AXE+FRT+SET+TMP+OPP)
summary(lmT3)
plot_coefs(lmT3)
lmT4<-lm(data=PredictiveModels,T4~AXE+FRT+SET+TMP+OPP)
summary(lmT4)
plot_coefs(lmT4)
lmTUK<-lm(data=PredictiveModels,TUK~AXE+FRT+SET+TMP+OPP)
summary(lmTUK)
plot_coefs(lmTUK)

ggplot(PredictiveModels,aes(y=FRT,x=N))+
  geom_line(alpha=1)


##FINAL REGRESSION

lmAXEold<-lm(data=PredictiveModels,AXE~FRT+TMP+OPP+MNS+MJS+OPP*MJS)
lmAXEnew<-lm(data=PredictiveModels2,AXE~FRT+TMP+OPP+MNS+MJS+OPP*MJS)
lmAXE2<-lm(data=PredictiveModels2,AXE~FRT+TMP+OPP+MNS+MJS)
lmAXE1<-lm(data=PredictiveModels2,AXE~FRT+TMP+OPP+SET)
lmAXEold$df.residual<-133-7
lmAXEnew$df.residual<-133-7
lmAXE1$df.residual<-133-7
lmAXE2$df.residual<-133-7
summary(lmAXE1)
summary(lmAXE2)
summary(lmAXEnew)
plot_coefs(lmAXEnew,plot.distributions=TRUE,rescale.distributions=TRUE,ci_level=0.99,inner_ci_level=0.9,coefs=c("Fort Density"="FRT","Temple Density"="TMP","Oppidum Density"="OPP","Minor Settlement Density"="MNS","Major Settlement Density"="MJS","Major Settlement × Oppidum Density"="OPP:MJS"))
plot_coefs(lmAXE1,lmAXE2,lmAXEnew,ci_level=0.9,coefs=c("Major Settlement × Oppidum Density"="OPP:MJS","Major Settlement Density"="MJS","Minor Settlement Density"="MNS","Settlement Density"="SET","Oppidum Density"="OPP","Temple Density"="TMP","Fort Density"="FRT"))
plot_coefs(lmAXEold,lmAXEnew,ci_level=0.9,coefs=c("Major Settlement × Oppidum Density"="OPP:MJS","Major Settlement Density"="MJS","Minor Settlement Density"="MNS","Settlement Density"="SET","Oppidum Density"="OPP","Temple Density"="TMP","Fort Density"="FRT"))
require(stargazer)

stargazer(lmAXE1,lmAXE2,lmAXEnew,title="Table: Regression Models for Axe Location",align=TRUE,keep.stat=c("n","rsq"),dep.var.labels=c("Effect on Probability of Axe Occurrence"),
          covariate.labels=c(
            "Fort Density",
            "Temple Density",
            "Oppidum Density",
            "Settlement Density",
            "Minor Settlement Density",
            "Major Settlement Density",
            "Major Settlement × Oppidum Density"
          ),
          digits=2,no.space=TRUE,out="AXElm.html")

znew<-lmAXEnew[1]$coefficients[1]+lmAXEnew[1]$coefficients[2]*PredictiveModels2$FRT+lmAXEnew[1]$coefficients[3]*PredictiveModels2$TMP+lmAXEnew[1]$coefficients[4]*PredictiveModels2$OPP+lmAXEnew[1]$coefficients[5]*PredictiveModels2$MNS+lmAXEnew[1]$coefficients[6]*PredictiveModels2$MJS+lmAXEnew[1]$coefficients[7]*PredictiveModels2$MJS*PredictiveModels2$OPP
j<-1
zz<-c()
for(i in 1:length(UKgrid)){
  if(UKgrid[i]==1){
    zz[i]<-znew[j]
    j<-j+1
  } else {
    zz[i]<-0
  }
}
for(i in 1:100){
  for(j in 1:100){
    kdeAlm$z[j,i]<-zz[(i-1)*100+j]
  }
}
znew<-PredictiveModels2$AXE
kdeAXE<-kde1
j<-1
zz<-c()
for(i in 1:length(UKgrid)){
  if(UKgrid[i]==1){
    zz[i]<-znew[j]
    j<-j+1
  } else {
    zz[i]<-0
  }
}
for(i in 1:100){
  for(j in 1:100){
    kdeAXE$z[j,i]<-zz[(i-1)*100+j]
  }
}
kdeAlm$z<-kdeAlm$z^2
contour(kdeAlm,xlim=c(-5,2),ylim=c(50,58))
contour(kdeAXE,xlim=c(-5,2),ylim=c(50,58))


fortcoords<-data.frame(#Forts
  "lon"=FRT@coords[,1],
  "lat"=FRT@coords[,2])
templecoords<-data.frame(#Temples
  "lon"=TMP@coords[,1],
  "lat"=TMP@coords[,2])
minScoords<-data.frame(#Minor Settlements
  "lon"=MNS@coords[,1],
  "lat"=MNS@coords[,2])
majScoords<-data.frame(#Major Settlements
  "lon"=MJS@coords[,1],
  "lat"=MJS@coords[,2])
oppcoords<-data.frame(#Oppidums
  "lon"=OPP@coords[,1],
  "lat"=OPP@coords[,2])

ggplot(fortcoords,aes(x=lon,y=lat))+#FORTS HEATMAP
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  stat_density_2d(aes(fill=..level..),geom="polygon",alpha=0.5)+
  scale_fill_gradient(low="grey25",high="red")

ggplot(templecoords,aes(x=lon,y=lat))+#TEMPLES HEATMAP
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  stat_density_2d(aes(fill=..level..),geom="polygon",alpha=0.5)+
  scale_fill_gradient(low="grey25",high="steelblue2")

ggplot(minScoords,aes(x=lon,y=lat))+#MINOR SETTLEMENTS HEATMAP
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  stat_density_2d(aes(fill=..level..),geom="polygon",alpha=0.5)+
  scale_fill_gradient(low="grey25",high="palegreen2")

ggplot(majScoords,aes(x=lon,y=lat))+#MAJOR SETTLEMENTS HEATMAP
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  stat_density_2d(aes(fill=..level..),geom="polygon",alpha=0.5)+
  scale_fill_gradient(low="grey25",high="yellow2")

ggplot(oppcoords,aes(x=lon,y=lat))+#OPPIDUMS HEATMAP
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  stat_density_2d(aes(fill=..level..),geom="polygon",alpha=0.5)+
  scale_fill_gradient(low="grey25",high="orchid")


sites<-data.frame(
  "Type"=c("Fort"),
  "lon"=FRT@coords[,1],
  "lat"=FRT@coords[,2],
  "Name"=FRT$modern
)
sites<-bind_rows(sites, data.frame(
  "Type"=c("Temple"),
  "lon"=TMP@coords[,1],
  "lat"=TMP@coords[,2],
  "Name"=TMP$modern
))
sites<-bind_rows(sites, data.frame(
  "Type"=c("Major Settlement"),
  "lon"=MJS@coords[,1],
  "lat"=MJS@coords[,2],
  "Name"=MJS$modern
))
sites<-bind_rows(sites, data.frame(
  "Type"=c("Minor Settlement"),
  "lon"=MNS@coords[,1],
  "lat"=MNS@coords[,2],
  "Name"=MNS$modern
))
sites<-bind_rows(sites, data.frame(
  "Type"=c("Oppidum"),
  "lon"=OPP@coords[,1],
  "lat"=OPP@coords[,2],
  "Name"=OPP$modern
))

ggplot(sites,aes(x=lon,y=lat))+#ALL FINDS, MATERIAL & QUANTITY
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  geom_jitter(aes(color=Type),alpha=0.5)+
  #geom_text(aes(label=ifelse(Type=="Major Settlement",as.character(Name),''),color=Type),hjust=0,vjust=0,size=3)+
  scale_size(breaks=c(1:4),range=c(0.4,1.5))

ggplot(subset(sites,Type=="Major Settlement"),aes(x=lon,y=lat))+#ALL FINDS, MATERIAL & QUANTITY
  geom_map(data=map,map=map,aes(x=long,y=lat,group=group,map_id=region))+
  geom_jitter(color="cornsilk",alpha=0.5)+
  geom_label(aes(label=as.character(Name)),color="cornsilk",fill="grey20",hjust=0,vjust=0,size=4,angle=20)+
  scale_size(breaks=c(1:4),range=c(0.4,1.5))