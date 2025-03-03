\ Model RAP
\ LP format - for model browsing. Use MPS format to capture full model detail.
Maximize
  53 assign[Carlos,Tester] + 27 assign[Carlos,Desarrollador]
   + 13 assign[Carlos,Arquitecto] + 80 assign[Jose,Tester]
   + 47 assign[Jose,Desarrollador] + 67 assign[Jose,Arquitecto]
   + 53 assign[Monica,Tester] + 73 assign[Monica,Desarrollador]
   + 47 assign[Monica,Arquitecto]
Subject To
 asignacion_trabajos[Tester]: assign[Carlos,Tester] + assign[Jose,Tester]
   + assign[Monica,Tester] = 1
 asignacion_trabajos[Desarrollador]: assign[Carlos,Desarrollador]
   + assign[Jose,Desarrollador] + assign[Monica,Desarrollador] = 1
 asignacion_trabajos[Arquitecto]: assign[Carlos,Arquitecto]
   + assign[Jose,Arquitecto] + assign[Monica,Arquitecto] = 1
 como_mucho_un_trabajo[Carlos]: assign[Carlos,Tester]
   + assign[Carlos,Desarrollador] + assign[Carlos,Arquitecto] <= 1
 como_mucho_un_trabajo[Jose]: assign[Jose,Tester]
   + assign[Jose,Desarrollador] + assign[Jose,Arquitecto] <= 1
 como_mucho_un_trabajo[Monica]: assign[Monica,Tester]
   + assign[Monica,Desarrollador] + assign[Monica,Arquitecto] <= 1
Bounds
End
