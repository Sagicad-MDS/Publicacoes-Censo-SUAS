
*** ANTES DE TUDO, SUBSTITUIR NO CSV   ".00"  POR  ",00"

*** ABRIR ARQUIVO CSV *** ( VERIFICAR O NOME E ENDEREÇO DE LOCALIZAÇÃO DO ARQUIVO)

GET DATA
  /TYPE=TXT
  /FILE="\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ "+
    "Tratamento\Gestão Municipal\dados_gerais.csv"
  /DELCASE=LINE
  /DELIMITERS=";"
  /QUALIFIER='"'
  /ARRANGEMENT=DELIMITED
  /FIRSTCASE=2
  /IMPORTCASE=ALL
  /VARIABLES=
  codigo_ibge F6.0
  v11128 A80
  v11129 F2.0
  v11130 A80
  v11131 F5.0
  v11132 A80
  v11133 A80
  v11134 A120
  v11135 F8.0
  v11136 A120
  v11137 A2
  v11139 A80
  v11140 F11.0
  v11142 F10.0
  v11141 F4.0
  v11143 F1.0
  v11144_1 F1.0
  v11144_2 F1.0
  v11144_3 F1.0
  v11144_4 F1.0
  v11144_5 F1.0
  v11144_6 F1.0
  v11144_7 F1.0
  v11144_8 F1.0
  v11145 A80
  v11146 F1.0
  v11147 F1.0
  v11148 F1.0
  v11149 F1.0
  v11150 F1.0
  v11151 F1.0
  v11152 F1.0
  v11153 F1.0
  v11154 F1.0
  v11155 F1.0
  v11156 F1.0
  v11157 A80
  v11158 F2.0
  v11159 F2.0
  v11160 F2.0
  v11161 F2.0
  v11162 F2.0
  v11163 F2.0
  v11164 F2.0
  v11165 F2.0
  v11166 F3.0
  v11167 F3.0
  v11168 F3.0
  v11169 F3.0
  v11170 F1.0
  v11171 F1.0
  v11172 F2.0
  v11173 F3.0
  v11174 F1.0
  v11175 A80
  v11176 F1.0
  v11177 F4.0
  v11178 F4.0
  v11179_1 F1.0
  v11179_2 F1.0
  v11179_3 F1.0
  v11179_4 F1.0
  v11179_5 F1.0
  v11179_6 F1.0
  v11179_7 F1.0
  v11179_8 F1.0
  v11179_9 F1.0
  v11179_10 F1.0
  v11179_11 F1.0
  v11179_12 F1.0
  v11179_13 F1.0
  v11179_14 F1.0
  v11179_15 F1.0
  v11179_16 F1.0
  v11179_17 F1.0
  v11179_18 F1.0
  v11179_19 F1.0
  v11180 A120
  v11181 F1.0
  v11182 F4.0
  v11183_1 F1.0
  v11184 F1.0
  v11185 F1.0
  v11186 F1.0
  v11187_1 F1.0
  v11187_2 F1.0
  v11187_3 F1.0
  v11187_4 F1.0
  v11187_5 F1.0
  v11187_6 F1.0
  v11187_7 F1.0
  v11187_8 F1.0
  v11187_9 F1.0
  v11187_10 F1.0
  v11187_11 F1.0
  v11187_12 F1.0
  v11187_13 F1.0
  v11187_14 F1.0
  v11187_15 F1.0
  v11187_16 F1.0
  v11187_17 F1.0
  v11187_18 F1.0
  v11187_19 F1.0
  v11187_20 F1.0
  v11187_21 F1.0
  v11187_99 F1.0
  v11188 F1.0
  v11189_1 F1.0
  v11189_2 F1.0
  v11189_3 F1.0
  v11189_4 F1.0
  v11189_5 F1.0
  v11189_6 F1.0
  v11189_7 F1.0
  v11191 A250
  v11192 F2.0
  v11193 F2.0
  v11194 F3.0
  v11195_0 F1.0
  v11195_1 F1.0
  v11195_2 F1.0
  v11195_3 F1.0
  v11195_4 F1.0
  v11195_5 F1.0
  v11195_99 F1.0
  v11196 F1.0
  v11197 F1.0
  v11199 F1.0
  v11200 A14
  v11201 A14
  v11202 A14
  v11203 A14
  v11204 A14
  v11205 A14
  v11206 A14
  v11207 A14
  v11208 F1.0
  v11209 F4.0
  v11210 F4.0
  v11212 F4.0
  v11213 F4.0
  v11214 F4.0
  v11215 F4.0
  v11216 F4.0
  v11217 F4.0
  v11218 F4.0
  v11219 F4.0
  v11220 F4.0
  v11221 F4.0
  v11222 F4.0
  v11223 F4.0
  v11224 F4.0
  v11225 F4.0
  v11226 F4.0
  v11227 F4.0
  v11228 F4.0
  v11229 F4.0
  v11230 F4.0
  v11231 F4.0
  v11232 F4.0
  v11233 F4.0
  v11234 F4.0
  v11235 F4.0
  v11236 F4.0
  v11237 F4.0
  v11238 F4.0
  v11239 F4.0
  v11240 F4.0
  v11241 F4.0
  v11242 F4.0
  v11243 F4.0
  v11245 F1.0
  v11247 F1.0
  v11249 F3.0
  v11246 F1.0
  v11248 F1.0
  v11250 F3.0
  v11251 F1.0
  v11253 F2.0
  v11254 A10
  v11255 F3.0
  v11252 F1.0
  v11256 F3.0
  v11257 A10
  v11258 F3.0
  v11259 F1.0
  v11260 F1.0
  v11261_1 F1.0
  v11261_2 F1.0
  v11261_3 F1.0
  v11262 F4.0
  v11263 F1.0
  v11264_1 F1.0
  v11264_2 F1.0
  v11264_3 F1.0
  v11368 F4.0
  v11265_1 F1.0
  v11265_2 F1.0
  v11265_3 F1.0
  v11265_4 F1.0
  v11265_5 F1.0
  v11265_6 F1.0
  v11265_7 F1.0
  v11265_8 F1.0
  v11265_9 F1.0
  v11265_10 F1.0
  v11265_11 F1.0
  v11265_12 F1.0
  v11265_13 F1.0
  v11265_14 F1.0
  v11265_15 F1.0
  v11265_16 F1.0
  v11265_17 F1.0
  v11265_18 F1.0
  v11265_19 F1.0
  v11265_99 F1.0
  v11266 A80
  v11267_1 F1.0
  v11267_2 F1.0
  v11267_3 F1.0
  v11267_4 F1.0
  v11267_5 F1.0
  v11268_1 F1.0
  v11268_2 F1.0
  v11268_3 F1.0
  v11268_4 F1.0
  v11268_5 F1.0
  v11268_6 F1.0
  v11269_1 F1.0
  v11269_2 F1.0
  v11269_3 F1.0
  v11269_4 F1.0
  v11269_5 F1.0
  v11269_6 F1.0
  v11270 F4.0
  v11271 F4.0
  v11272 F4.0
  v11273 F4.0
  v11275 F4.0
  v11276 F4.0
  v11277_0 F1.0
  v11277_1 F1.0
  v11277_2 F1.0
  v11277_3 F1.0
  v11277_4 F1.0
  v11277_5 F1.0
  v11277_6 F1.0
  v11372 A80
  v11281_1 F1.0
  v11281_2 F1.0
  v11281_3 F1.0
  v11281_4 F1.0
  v11281_5 F1.0
  v11281_6 F1.0
  v11282 A80
  v11283_0 F1.0
  v11283_1 F1.0
  v11283_2 F1.0
  v11283_3 F1.0
  v11283_4 F1.0
  v11283_5 F1.0
  v11283_6 F1.0
  v11283_7 F1.0
  v11283_8 F1.0
  v11283_9 F1.0
  v11283_10 F1.0
  v11283_11 F1.0
  v11283_12 F1.0
  v11284 F1.0
  v11285 F1.0
  v11286 F1.0
  v11287 F4.0
  v11288 F1.0
  v11289 A80
  v11290 F1.0
  v11291 F4.0
  v11292 F4.0
  v11293_1 F1.0
  v11293_2 F1.0
  v11293_3 F1.0
  v11293_4 F1.0
  v11293_5 F1.0
  v11293_6 F1.0
  v11293_7 F1.0
  v11293_8 F1.0
  v11293_9 F1.0
  v11293_10 F1.0
  v11294 F1.0
  v11295 F1.0
  v11296 F5.0
  v11297_1 F1.0
  v11297_2 F1.0
  v11297_3 F1.0
  v11297_4 F1.0
  v11297_5 F1.0
  v11297_99 F1.0
  v11298 A250
  v11299 A250
  v11300 F2.0
  v11301 F1.0
  v11302_1 F1.0
  v11302_2 F1.0
  v11302_3 F1.0
  v11302_4 F1.0
  v11302_99 F1.0
  v11303 A366
  v11304 F1.0
  v11305_1 F1.0
  v11305_2 F1.0
  v11305_3 F1.0
  v11305_4 F1.0
  v11305_5 F1.0
  v11305_6 F1.0
  v11305_99 F1.0
  v11306 A80
  v11307 F1.0
  v11308_1 F1.0
  v11308_2 F1.0
  v11308_3 F1.0
  v11308_4 F1.0
  v11308_5 F1.0
  v11308_6 F1.0
  v11308_7 F1.0
  v11308_8 F1.0
  v11309 F1.0
  v11315 F1.0
  v11316 F1.0
  v11317 F1.0
  v11318 F1.0
  v11319 F1.0
  v11320 F1.0
  v11321 F1.0
  v11322 F1.0
  v11323 F1.0
  v11324 F1.0
  v11325 F1.0
  v11326 F1.0
  v11327 F1.0
  v11328 F1.0
  v11329 F5.0
  v11330_1 F1.0
  v11331 F1.0
  v11332 F1.0
  v11333 F2.0
  v11334 F2.0
  v11335 F2.0
  v11336 F1.0
  v11337 F4.0
  v11338_1 F1.0
  v11338_2 F1.0
  v11338_3 F1.0
  v11338_4 F1.0
  v11338_5 F1.0
  v11338_6 F1.0
  v11339 F1.0
  v11340 F5.0
  v11341 F4.0
  v11342 F1.0
  v11343 F1.0
  v11344 F1.0
  v11345 F1.0
  v11346 F1.0
  v11347_1 F1.0
  v11347_2 F1.0
  v11347_3 F1.0
  v11347_4 F1.0
  v11347_5 F1.0
  v11347_6 F1.0
  v11347_7 F1.0
  v11348 A120
  v11349 F1.0
  v11350 F1.0
  v11351 F1.0
  v11352_1 F1.0
  v11352_2 F1.0
  v11352_3 F1.0
  v11352_4 F1.0
  v11352_5 F1.0
  v11352_6 F1.0
  v11352_7 F1.0
  v11353 A80
  v11354_1 F1.0
  v11354_2 F1.0
  v11354_3 F1.0
  v11354_4 F1.0
  v11355 A80
  v11356 A14
  v11357 EDATE10
  v11359 A80
  v11360 A14
  v11361 A80
  v11362_0 F1.0
  v11363 A80
  v11364 A14
  v11365 A80
  v11366 A14
  v11367 A80.
CACHE.
EXECUTE.


SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gestão Municipal\Dados Gerais_23fev.sav'
  /COMPRESSED.




*** RENOMEAR VARIÁVEIS ***********************************************************************************************************

RENAME VARIABLES
v11128	=	Ident_01
v11129	=	Ident_02
v11130	=	Ident_03
v11131	=	Ident_04
v11132	=	Ident_05
v11133	=	Ident_06
v11134	=	Ident_07
v11135	=	Ident_08
v11136	=	Ident_09
v11137	=	Ident_10
v11139	=	Ident_11
v11140	=	Ident_12
v11142	=	Ident_13
v11141	=	Ident_14
v11143	=	q1
v11144_1	=	q2_1
v11144_2	=	q2_2
v11144_3	=	q2_3
v11144_4	=	q2_4
v11144_5	=	q2_5
v11144_6	=	q2_6
v11144_7	=	q2_7
v11144_8	=	q2_8
v11145	=	q2_9
v11146	=	q3_1
v11147	=	q3_2
v11148	=	q3_3
v11149	=	q3_4
v11150	=	q3_5
v11151	=	q3_6
v11152	=	q3_7
v11153	=	q3_8
v11154	=	q4
v11155	=	q5
v11156	=	q6
v11157	=	q6a_Outro
v11158	=	q7_1
v11159	=	q7_2
v11160	=	q7_3
v11161	=	q7_4
v11162	=	q7_5
v11163	=	q7_6
v11164	=	q7_7
v11165	=	q7_8
v11166	=	q8
v11167	=	q9a
v11168	=	q9b
v11169	=	q10
v11170	=	q11
v11171	=	q12
v11172	=	q13a
v11173	=	q13b
v11174	=	q14
v11175	=	q15
v11176	=	q16
v11177	=	q17
v11178	=	q18
v11179_1	=	q19_1
v11179_2	=	q19_2
v11179_3	=	q19_3
v11179_4	=	q19_4
v11179_5	=	q19_5
v11179_6	=	q19_6
v11179_7	=	q19_7
v11179_8	=	q19_8
v11179_9	=	q19_9
v11179_10	=	q19_10
v11179_11	=	q19_11
v11179_12	=	q19_12
v11179_13	=	q19_13
v11179_14	=	q19_14
v11179_15	=	q19_15
v11179_16	=	q19_16
v11179_17	=	q19_17
v11179_18	=	q19_18
v11179_19	=	q19_19
v11180	=	q19_19a
v11181	=	q20
v11182	=	q21
v11183_1	=	q21_99
v11184	=	q22
v11185	=	q23
v11186	=	q24
v11187_1	=	q25_1
v11187_2	=	q25_2
v11187_3	=	q25_3
v11187_4	=	q25_4
v11187_5	=	q25_5
v11187_6	=	q25_6
v11187_7	=	q25_7
v11187_8	=	q25_8
v11187_9	=	q25_9
v11187_10	=	q25_10
v11187_11	=	q25_11
v11187_12	=	q25_12
v11187_13	=	q25_13
v11187_14	=	q25_14
v11187_15	=	q25_15
v11187_16	=	q25_16
v11187_17	=	q25_17
v11187_18	=	q25_18
v11187_19	=	q25_19
v11187_20	=	q25_20
v11187_21	=	q25_21
v11187_99	=	q25_99
v11188	=	q26
v11189_1	=	q27_1
v11189_2	=	q27_2
v11189_3	=	q27_3
v11189_4	=	q27_4
v11189_5	=	q27_5
v11189_6	=	q27_6
v11189_7	=	q27_7
v11191	=	q27_7a
v11192	=	q28a
v11193	=	q28b
v11194	=	q28c
v11195_0	=	q29_0
v11195_1	=	q29_1
v11195_2	=	q29_2
v11195_3	=	q29_3
v11195_4	=	q29_4
v11195_5	=	q29_5
v11195_99	=	q29_6
v11196	=	q30
v11197	=	q31
v11199	=	q32
v11200	=	q33_1a
v11201	=	q33_1b
v11202	=	q33_2a
v11203	=	q33_2b
v11204	=	q33_3a
v11205	=	q33_3b
v11206	=	q33_4a
v11207	=	q33_4b
v11208	=	q34
v11209	=	q35
v11210	=	q36_1a
v11212	=	q36_1b
v11213	=	q36_1c
v11214	=	q36_1
v11215	=	q36_2a
v11216	=	q36_2b
v11217	=	q36_2c
v11218	=	q36_2
v11219	=	q36_3a
v11220	=	q36_3b
v11221	=	q36_3c
v11222	=	q36_3
v11223	=	q36_4a
v11224	=	q36_4b
v11225	=	q36_4c
v11226	=	q36_4
v11227	=	q36_a
v11228	=	q36_b
v11229	=	q36_c
v11230	=	q36
v11231	=	q37_1
v11232	=	q37_2
v11233	=	q37_3
v11234	=	q37_4
v11235	=	q37_5
v11236	=	q37_6
v11237	=	q37_7
v11238	=	q37_8
v11239	=	q37_9
v11240	=	q37_10
v11241	=	q37_11
v11242	=	q37_12
v11243	=	q37_13
v11245	=	q38_1a
v11247	=	q38_1b
v11249	=	q38_1c
v11246	=	q38_2a
v11248	=	q38_2b
v11250	=	q38_2c
v11251	=	q39_1a
v11253	=	q39_1b
v11254	=	q39_1c
v11255	=	q39_1d
v11252	=	q39_2a
v11256	=	q39_2b
v11257	=	q39_2c
v11258	=	q39_2d
v11259	=	q40
v11260	=	q41
v11261_1	=	q42_1
v11261_2	=	q42_2
v11261_3	=	q42_3
v11262	=	q43
v11263	=	q44
v11264_1	=	q45_1
v11264_2	=	q45_2
v11264_3	=	q45_3
v11368	=	q46
v11265_1	=	q47_1
v11265_2	=	q47_2
v11265_3	=	q47_3
v11265_4	=	q47_4
v11265_5	=	q47_5
v11265_6	=	q47_6
v11265_7	=	q47_7
v11265_8	=	q47_8
v11265_9	=	q47_9
v11265_10	=	q47_10
v11265_11	=	q47_11
v11265_12	=	q47_12
v11265_13	=	q47_13
v11265_14	=	q47_14
v11265_15	=	q47_15
v11265_16	=	q47_16
v11265_17	=	q47_17
v11265_18	=	q47_18
v11265_19	=	q47_19
v11265_99	=	q47_20
v11266	=	q47_20a
v11267_1	=	q48_1a
v11267_2	=	q48_1b
v11267_3	=	q48_1e
v11267_4	=	q48_1f
v11267_5	=	q48_1g
v11268_1	=	q48_2a
v11268_2	=	q48_2c
v11268_3	=	q48_2d
v11268_4	=	q48_2e
v11268_5	=	q48_2f
v11268_6	=	q48_2g
v11269_1	=	q48_3a
v11269_2	=	q48_3c
v11269_3	=	q48_3d
v11269_4	=	q48_3e
v11269_5	=	q48_3f
v11269_6	=	q48_3g
v11270	=	q49_1a
v11271	=	q49_1b
v11272	=	q49_2a
v11273	=	q49_2b
v11275	=	q49_3a
v11276	=	q49_3b
v11277_0	=	q50_0
v11277_1	=	q50_1
v11277_2	=	q50_2
v11277_3	=	q50_3
v11277_4	=	q50_4
v11277_5	=	q50_5
v11277_6	=	q50_6
v11372	=	q50_6a
v11281_1	=	q51_1
v11281_2	=	q51_2
v11281_3	=	q51_3
v11281_4	=	q51_4
v11281_5	=	q51_5
v11281_6	=	q51_6
v11282	=	q51_5a
v11283_0	=	q52_0
v11283_1	=	q52_1
v11283_2	=	q52_2
v11283_3	=	q52_3
v11283_4	=	q52_4
v11283_5	=	q52_5
v11283_6	=	q52_6
v11283_7	=	q52_7
v11283_8	=	q52_8
v11283_9	=	q52_9
v11283_10	=	q52_10
v11283_11	=	q52_11
v11283_12	=	q52_12
v11284	=	q53
v11285	=	q54
v11286	=	q55
v11287	=	q56
v11288	=	q57
v11289	=	q57a
v11290	=	q58
v11291	=	q59
v11292	=	q60
v11293_1	=	q61_1
v11293_2	=	q61_2
v11293_3	=	q61_3
v11293_4	=	q61_4
v11293_5	=	q61_5
v11293_6	=	q61_6
v11293_7	=	q61_7
v11293_8	=	q61_8
v11293_9	=	q61_9
v11293_10	=	q61_10
v11294	=	q62
v11295	=	q63
v11296	=	q64
v11297_1	=	q65_1
v11297_2	=	q65_2
v11297_3	=	q65_3
v11297_4	=	q65_4
v11297_5	=	q65_5
v11297_99	=	q65_6
v11298	=	q65_5a
v11299	=	q65_6a
v11300	=	q66
v11301	=	q67
v11302_1	=	q68_1
v11302_2	=	q68_2
v11302_3	=	q68_3
v11302_4	=	q68_4
v11302_99	=	q68_5
v11303	=	q68_5a
v11304	=	q69
v11305_1	=	q70_1
v11305_2	=	q70_2
v11305_3	=	q70_3
v11305_4	=	q70_4
v11305_5	=	q70_5
v11305_6	=	q70_6
v11305_99	=	q70_7
v11306	=	q70_7a
v11307	=	q71
v11308_1	=	q72_1
v11308_2 = q72_2falha
v11308_3 = q72_3falha
v11308_4	=	q72_4
v11308_5	=	q72_5
v11308_6	=	q72_6
v11308_7	=	q72_7
v11308_8	=	q72_8
v11309	=	q73_1a
v11315	=	q73_1b
v11316	=	q73_1c
v11317	=	q73_2a
v11318	=	q73_2b
v11319	=	q73_2c
v11320	=	q73_3a
v11321	=	q73_3b
v11322	=	q73_3c
v11323	=	q73_4a
v11324	=	q73_4b
v11325	=	q73_4c
v11326	=	q74
v11327	=	q75
v11328	=	q76
v11329	=	q77
v11330_1	=	q77_99
v11331	=	q78
v11332	=	q79
v11333	=	q80a
v11334	=	q80b
v11335	=	q80c
v11336	=	q81
v11337	=	q82
v11338_1	=	q83_1
v11338_2	=	q83_2
v11338_3	=	q83_3
v11338_4	=	q83_4
v11338_5	=	q83_5
v11338_6	=	q83_6
v11339	=	q84
v11340	=	q85
v11341	=	q86
v11342	=	q87
v11343	=	q88
v11344	=	q89
v11345	=	q90
v11346	=	q91
v11347_1	=	q92_1
v11347_2	=	q92_2
v11347_3	=	q92_3
v11347_4	=	q92_4
v11347_5	=	q92_5
v11347_6	=	q92_6
v11347_7	=	q92_7
v11348	=	q92_7a
v11349	=	q93
v11350	=	q94
v11351	=	q95
v11352_1	=	q96_1
v11352_2	=	q96_2
v11352_3	=	q96_3
v11352_4	=	q96_4
v11352_5	=	q96_5
v11352_6	=	q96_6
v11352_7	=	q96_7
v11353	=	q96_7a
v11354_1	=	q97_1
v11354_2	=	q97_2
v11354_3	=	q97_3
v11354_4	=	q97_4
v11355	=		Resp1_1
v11356	=	Resp1_2
v11357	=	Resp1_3
v11359	=	Resp1_4
v11360	=	Resp1_5
v11361	=	Resp1_6
v11362_0	=	Resp2_99
v11363	=	Resp2_1
v11364	=	Resp2_2
v11365	=	Resp2_3
v11366	=	Resp2_4
v11367	=	Resp2_5.
Execute.


SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gestão Municipal\Dados Gerais_23fev.sav'
  /COMPRESSED.



*** RÓTULO DAS VARIÁVEIS ********************************************************************************************************************************************

VARIABLE LABELS
Ident_01	"	Ident_01 Nome que identifica o órgão gestor:	"
Ident_02	"	Ident_02 Tipo de Logradouro (avenida, rua, etc)	"
Ident_03	"	Ident_03 Endereço:	"
Ident_04	"	Ident_04 Número:	"
Ident_05	"	Ident_05 Complemento:	"
Ident_06	"	Ident_06 Bairro:	"
Ident_07	"	Ident_07 Ponto de Referência:	"
Ident_08	"	Ident_08 CEP:	"
Ident_09	"	Ident_09 Município	"
Ident_10	"	Ident_10 UF	"
Ident_11	"	Ident_11 Email:	"
Ident_12	"	Ident_12 DDD - Telefone:	"
Ident_13	"	Ident_13 FAX:	"
Ident_14	"	Ident_14 Ramal	"
q1	"	q1 O órgão gestor da assistência social caracteriza-se como:	"
q2_1	"	q2_1 Educação	"
q2_2	"	q2_2 Planejamento	"
q2_3	"	q2_3 Saúde	"
q2_4	"	q2_4 Habitação	"
q2_5	"	q2_5 Segurança Alimentar	"
q2_6	"	q2_6 Trabalho e/ou Emprego	"
q2_7	"	q2_7 Direitos Humanos	"
q2_8	"	q2_8 Outra	"
q2_9	"	q2_9 Outra_Qual?	"
q3_1	"	q3_1 Proteção Social Básica	"
q3_2	"	q3_2 Proteção Social Especial	"
q3_3	"	q3_3 Gestão de Benefícios Assistenciais (PBF, BPC, Eventuais)	"
q3_4	"	q3_4 Gestão do SUAS	"
q3_5	"	q3_5 Vigilância Socioassistencial/Monitoramento e avaliação	"
q3_6	"	q3_6 Gestão do Trabalho	"
q3_7	"	q3_7 Regulação do SUAS	"
q3_8	"	q3_8 Gestão Financeira e Orçamentária	"
q4	"	q4_O órgão gestor da Assistência Social é responsável pela política de segurança alimentar?	"
q5	"	q5_O órgão gestor da Assistência Social é responsável pela gestão do CadÚnico?	"
q6	"	q6_Caso não,qual o órgão/secretaria é responsável pelo cadastro?	"
q6a_Outro	"	q6a_Outro_Qual?	"
q7_1	"	q7_1 Na sede do órgão gestor/Secretaria de Assistência	"
q7_2	"	q7_2 Nos CRAS	"
q7_3	"	q7_3 Em unidades/postos fixos exclusivos para cadastramento	"
q7_4	"	q7_4 Em unidades móveis ou postos temporários	"
q7_5	"	q7_5 Em outras unidades da Assistência Social	"
q7_6	"	q7_6 Em unidades de outras políticas públicas	"
q7_7	"	q7_7 No domicílio das famílias	"
q7_8	"	q7_8 Outros	"
q8	"	q8 Em quantos locais é realizado o cadastramento/atualização do CadÚnico?	"
q9a	"	q9a Acessam a versão on line do CadÚnico e realizam a digitação das informações	"
q9b	"	q9b Registram as informações exclusivamente no Formulário de papel e enviam para digitação em outro local	"
q10	"	q10 Em média, após a entrevista, quantos dias leva para que os dados coletados no papel sejam inseridos no sistema?	"
q11	"	q11 Existe Conselho Tutelar no município?	"
q12	"	q12 O Conselho Tutelar é vinculado ao Órgão Gestor da Assistência Social?	"
q13a	"	q13a Quantidade de Conselhos Tutelares existentes no município:	"
q13b	"	q13b Quantidade total de Conselheiros	"
q14	"	q14 O município é sede de comarca?	"
q15	"	q15 Caso não seja sede de comarca, a qual o município sede da Comarca está vinculado?	"
q16	"	q16 Existe Lei Municipal de regulamentação do SUAS?	"
q17	"	q17 De que ano é a Lei do SUAS?	"
q18	"	q18 Último ano de atualização da Lei do SUAS?	"
q19_1	"	q19_1 Conceituação da assistência social;	"
q19_2	"	q19_2 Funções da assistência social (Vigilância, Proteção, Defesa);	"
q19_3	"	q19_3 Princípios pelos quais a Assistência Social é regida;	"
q19_4	"	q19_4 Diretrizes para organização da Assistência Social;	"
q19_5	"	q19_5 Organização da assistência social por níveis de Proteção Social;	"
q19_6	"	q19_6 Conceituação e Objetivos do SUAS;	"
q19_7	"	q19_7 Público destinatário do SUAS;	"
q19_8	"	q19_8 Previsão do financiamento dos serviços	"
q19_9	"	q19_9 Previsão do financiamento dos programas e projetos	"
q19_10	"	q19_10 Previsão do financiamento dos benefícios socioassistenciais	"
q19_11	"	q19_11 Especificação do órgão responsável pela coordenação da Política de Assistência Social;	"
q19_12	"	q19_12 Previsão de prazo para regulamentação do funcionamento do Fundo de Assistência Social;	"
q19_13	"	q19_13 Especificação e conceituação dos equipamentos públicos estatais CRAS e CREAS;	"
q19_14	"	q19_14 Especificação e conceituação dos serviços socioassistenciais;	"
q19_15	"	q19_15 Especificação e conceituação dos benefícios eventuais	"
q19_16	"	q19_16 Criação do Conselho Municipal de Assistência Social	"
q19_17	"	q19_17 Criação do Fundo Municipal de Assistência Social	"
q19_18	"	q19_18 Instituição do Plano Municipal de Assistência Social	"
q19_19	"	q19_19 Outros	"
q19_19a	"	q19_19a Qual?	"
q20	"	q20 Com que frequência o Plano Municipal de Assistência Social é atualizado?	"
q21	"	q21 Em que ano ocorreu a última atualização do Plano Municipal de Assistência Social?	"
q21_99	"	q21_99 Não sabe	"
q22	"	q22_Algum representante do município participou das reuniões da CIB em 2015?	"
q23	"	q23_Se sim, em quantas reuniões da CIB houve representantes do seu município?	"
q24	"	q24_Nos últimos 12 meses, quantas visitas de técnicos da Secretaria Estadual o município recebeu?	"
q25_1	"	q25_1 Adequação da estrutura organizacional da Secretaria (regimento, organograma, etc)	"
q25_2	"	q25_2 Elaboração do Plano Municipal de Assistência Social	"
q25_3	"	q25_3 Elaboração de Relatório de Gestão	"
q25_4	"	q25_4 Gestão do Fundo Municipal de Assistência Social	"
q25_5	"	q25_5 Fortalecimento da intersetorialidade na gestão dos serviços,benefícios e programas	"
q25_6	"	q25_6 Integração dos serviços e benefícios	"
q25_7	"	q25_7 Fortalecimento do Conselho Municipal	"
q25_8	"	q25_8 Adequação da implantação dos serviços socioassistenciais	"
q25_9	"	q25_9 Gestão dos serviços socioassistenciais	"
q25_10	"	q25_10 Metodologias de trabalho social em famílias	"
q25_11	"	q25_11 Regulamentação dos benefícios eventuais	"
q25_12	"	q25_12 Gestão de benefícios eventuais	"
q25_13	"	q25_13 Implementação de ações relativas ao Benefício de Prestação Continuada (BPC)	"
q25_14	"	q25_14 Gestão do Cadastro Único de Programas Sociais - CadÚnico	"
q25_15	"	q25_15 Gestão do Programa Bolsa Família	"
q25_16	"	q25_16 Gestão do Trabalho	"
q25_17	"	q25_17 Metodologias de monitoramento e avaliação	"
q25_18	"	q25_18 Implantação da Vigilância Socioassistencial	"
q25_19	"	q25_19 Utilização do Prontuário SUAS	"
q25_20	"	q25_20 Adequação da legislação municipal	"
q25_21	"	q25_21 Prioridades e Metas do Pacto de Aprimoramento da Gestão Municipal	"
q25_99	"	q25_99 Outros	"
q26	"	q26_Nos últimos 12 meses, quantas vezes os técnicos ou gestores municipais participaram de atividades de orientação e apoio promovidas pelo Estado?	"
q27_1	"	q27_1 Produção e distribuição de material técnico;	"
q27_2	"	q27_2 Elaboração, pelo Estado, de normativas e instruções operacionais para orientação dos municípios;	"
q27_3	"	q27_3 Capacitações presenciais;	"
q27_4	"	q27_4 Capacitações à distância;	"
q27_5	"	q27_5 Assessoramento técnico de forma presencial no município;	"
q27_6	"	q27_6 Assessoramento técnico à distância;	"
q27_7	"	q27_7 Outras formas	"
q27_7a	"	q27_7a Especifique	"
q28a	"	q28a Profissionais FNAS de nível superior	"
q28b	"	q28b Profissionais FNAS de nível médio	"
q28c	"	q28c Profissionais FNAS total (superior mais médio)	"
q29_0	"	q29_0 Não há contadores responsáveis pelas contas do FMAS	"
q29_1	"	q29_1 No próprio Fundo Municipal de Assistência Social	"
q29_2	"	q29_2 No órgão gestor da Assistência Social	"
q29_3	"	q29_3 Em outro órgão/secretaria do município	"
q29_4	"	q29_4 Diretamente vinculado à Prefeitura	"
q29_5	"	q29_5 Em assessoria externa (entidade privada paga para tal)	"
q29_6	"	q29_6 Outro	"
q30	"	q30 Qual o ordenador de despesa do FMAS?	"
q31	"	q31 O município utiliza recursos do cofinanciamento federal de serviços para pagamento de servidores públicos	"
q32	"	q32 Atualmente o município recebe recursos estaduais para o cofinanciamento da Assistência Social?	"
q33_1a	"	 q33_1a Valor alocado referente aos recursos próprios do município (2013)	"
q33_1b	"	 q33_1b Valor alocado referente aos recursos próprios do município  (2014)	"
q33_2a	"	 q33_2a Valor repassado pelo governo estadual (Fundo a Fundo e Convênios) (2013)	"
q33_2b	"	 q33_2b Valor repassado pelo governo estadual (Fundo a Fundo e Convênios)  (2014)	"
q33_3a	"	 q33_3a Valor da despesa realizada com recursos próprios do município  (2013)	"
q33_3b	"	 q33_3b Valor da despesa realizada com recursos próprios do município  (2014)	"
q33_4a	"	 q33_4a Valor da despesa realizada com recursos repassados pelo governo estadual  (2013)	"
q33_4b	"	 q33_4b Valor da despesa realizada com recursos repassados pelo governo estadual  (2014)	"
q34	"	 q34  O órgão gestor municipal faz transferência de recursos por convênio para ONG’s ou Entidades de Assistência Social no município?	"
q35	"	 q35  Quantas entidades recebem recurso do órgão gestor municipal por convênio?	"
q36_1a	"	 q36_1a Estatutário - Ensino Fundamental	"
q36_1b	"	 q36_1b Estatutário - Ensino Médio	"
q36_1c	"	 q36_1c Estatutários - Ensino Superior	"
q36_1	"	 q36_1 Total - Estatutários	"
q36_2a	"	 q36_2a Empregados Públicos Celetistas - Ensino Fundamental	"
q36_2b	"	 q36_2b Empregados Públicos Celetistas - Ensino Médio	"
q36_2c	"	 q36_2c Empregados Públicos Celetistas - Ensino Superior	"
q36_2	"	 q36_2 Total - Empregados Públicos Celetistas	"
q36_3a	"	 q36_3a Somente Comissionados - Ensino Fundamental	"
q36_3b	"	 q36_3b Somente Comissionados - Ensino Médio	"
q36_3c	"	 q36_3c Somente Comissionados - Ensino Superior	"
q36_3	"	 q36_3 Total - Somente Comissionados	"
q36_4a	"	 q36_4a Outros Vínculos - Ensino Fundamental	"
q36_4b	"	 q36_4b Outros Vínculos - Ensino Médio	"
q36_4c	"	 q36_4c Outros Vínculos - Ensino Superior	"
q36_4	"	 q36_4 Total - Outros Vínculos	"
q36_a	"	 q36_a Total - Ensino Fundamental	"
q36_b	"	 q36_b Total - Ensino Médio	"
q36_c	"	 q36_c Total - Ensino Superior	"
q36	"	 q36 Total - Total de Trabalhadores	"
q37_1	"	q37_1 Assistente Social	"
q37_2	"	q37_2 Psicólogo	"
q37_3	"	q37_3 Pedagogo	"
q37_4	"	q37_4 Advogados	"
q37_5	"	q37_5 Antropólogo	"
q37_6	"	q37_6 Sociólogo	"
q37_7	"	q37_7 Terapeuta Ocupacional	"
q37_8	"	q37_8 Contador	"
q37_9	"	q37_9 Administrador	"
q37_10	"	q37_10 Economista	"
q37_11	"	q37_11 Economista Doméstico	"
q37_12	"	q37_12 Estatístico	"
q37_13	"	q37_13 Musicoterapeuta	"
q38_1a	"	q38_1a Realizou, ou realizará, concurso no ano de 2015 - Nível Superior	"
q38_1b	"	q38_1b Nível Superior - Concurso em 2015 - etapa atual do processo	"
q38_1c	"	q38_1c Nível Superior - Concurso em 2015 - candidatos nomeados	"
q38_2a	"	q38_2a Realizou, ou realizará, concurso no ano de 2015 - Nível Médio	"
q38_2b	"	q38_2b Nível Médio - Concurso em 2015 - etapa atual do processo	"
q38_2c	"	q38_2c Nível Médio - Concurso em 2015 - candidatos nomeados	"
q39_1a	"	q39_1a Realizou concurso em 2014 - Nível Superior	"
q39_1b	"	q39_1b Realizou concurso em 2014 - Nível Superior - Quantidade de vagas	"
q39_1c	"	q39_1c Realizou concurso em 2014 - Nível Superior - Data de homologação	"
q39_1d	"	q39_1d Realizou concurso em 2014 - Nível Superior - Quantidade de trabalhadores que tomaram posse	"
q39_2a	"	q39_2a Realizou concurso em 2014 - Nível Médio	"
q39_2b	"	q39_2b Realizou concurso em 2014 - Nível Médio - Quantidade de vagas	"
q39_2c	"	q39_2c Realizou concurso em 2014 - Nível Médio - Data de homologação do concurso	"
q39_2d	"	q39_2d Realizou concurso em 2014 - Nível Médio - Quantidade de trabalhadores que tomaram posse	"
q40	"	q40  O município possui Plano de Capacitação e Educação Permanente?	"
q41	"	 q41  No ano de 2014 os trabalhadores da Assistência Social do município tiveram acesso a cursos presenciais de capacitação?	"
q42_1	"	q42_1 O curso presencial foi promovido pelo: município	"
q42_2	"	q42_2 O curso presencial foi promovido pelo: gestão estadual	"
q42_3	"	q42_3 O curso presencial foi promovido pelo:  gestão federal/MDS	"
q43	"	q43  Qual o número aproximado de trabalhadores capacitados nos cursos presenciais?	"
q44	"	q44  No ano de 2014 os trabalhadores da Assistência Social do município tiveram acesso a cursos à distância (EAD) de capacitação?	"
q45_1	"	q45_1  O curso a distância foi promovido pelo: município	"
q45_2	"	q45_2  O curso a distância foi promovido pelo: gestão estadual	"
q45_3	"	q45_3  O curso a distância foi promovido pelo: gestão federal/MDS	"
q46	"	q46  Qual o número aproximado de trabalhadores capacitados nos cursos à distância?	"
q47_1	"	q47_1 Área temáticas do curso:1 Metodologias do trabalho social com famílias	"
q47_2	"	q47_2 Metodologias para desenvolvimento dos Serviços de Convivência e Fortalecimento de Vínculos	"
q47_3	"	q47_3 Atendimento a situações de violência e violação de direitos	"
q47_4	"	q47_4 Atendimento à População em situação de Rua	"
q47_5	"	q47_5 Atendimento a Pessoas com Deficiência	"
q47_6	"	q47_6 Medidas Socioeducativas para adolescentes em conflito com a lei	"
q47_7	"	q47_7 Acolhimento (abrigamento) de Crianças e Adolescentes	"
q47_8	"	q47_8 Acolhimento (abrigamento) de Idosos	"
q47_9	"	q47_9 Acolhimento (abrigamento) de pessoas em situação de rua	"
q47_10	"	q47_10 Estrutura, normas e funcionamento do SUAS	"
q47_11	"	q47_11 Gestão Financeira e Orçamentária do SUAS	"
q47_12	"	q47_12 Cadastro Único de Programas Sociais ? CadÚnico	"
q47_13	"	q47_13 Bolsa Família	"
q47_14	"	q47_14 Sistemas de Informação do SUAS	"
q47_15	"	q47_15 Vigilância Socioassistencial	"
q47_16	"	q47_16 Monitoramento e Avaliação	"
q47_17	"	q47_17 Gestão do Território	"
q47_18	"	q47_18 Álcool e Drogas	"
q47_19	"	q47_19 Ações da Assistência Social para situações de emergência e calamidade pública	"
q47_20	"	q47_20 Outras	"
q47_20a	"	q47_20a Especifique	"
q48_1a	"	q48_1a Na própria sede do órgão gestor	"
q48_1b	"	q48_1b No CRAS	"
q48_1e	"	q48_1e Em outra unidade pública	"
q48_1f	"	q48_1f Em entidade conveniada	"
q48_1g	"	q48_1g Não realiza	"
q48_2a	"	q48_2a Na própria sede do órgão gestor	"
q48_2c	"	q48_2c No CREAS	"
q48_2d	"	q48_2d No Centro Pop	"
q48_2e	"	q48_2e Em outra unidade pública	"
q48_2f	"	q48_2f Em entidade conveniada	"
q48_2g	"	q48_2g Não realiza	"
q48_3a	"	q48_3a Na própria sede do órgão gestor	"
q48_3c	"	q48_3c No CREAS	"
q48_3d	"	q48_3d  No Centro Pop	"
q48_3e	"	q48_3e Em outra unidade pública	"
q48_3f	"	q48_3f Em entidade conveniada	"
q48_3g	"	q48_3g Não realiza	"
q49_1a	"	q49_1a Qtd. Outras Unidades de PSB - Públicas	"
q49_1b	"	q49_1b Qtd  Outras Unidades de PSB - Não Gov  Conveniadas	"
q49_2a	"	q49_2a Qtd Unidades exclusivas de MSE - Públicas	"
q49_2b	"	q49_2b Qtd Unidades exclusivas de MSE - Não Gov  Conveniadas	"
q49_3a	"	q49_3a Outras Unidades de PSEs de Média Complexidade - Públicas	"
q49_3b	"	q49_3b Outras Unidades de PSEs de Média Complexidade - Não Gov  Conveniadas	"
q50_0	"	q50_0 Este município possui CREAS	"
q50_1	"	q50_1 Encaminha para o CRAS	"
q50_2	"	q50_2 Encaminha para o CREAS de outro município	"
q50_3	"	q50_3 Encaminha para o CREAS Regional ao qual está vinculado	"
q50_4	"	q50_4 Encaminha para alguma entidade conveniada no município	"
q50_5	"	q50_5 É atendido pela equipe de referência da proteção social especial do município	"
q50_6	"	q50_6 Outro	"
q50_6a	"	q50_6a Qual?	"
q51_1	"	q51_1 Encaminha para o CRAS	"
q51_2	"	q51_2 Encaminha para o CREAS de outro município	"
q51_3	"	q51_3 Encaminha para o CREAS Regional ao qual está vinculado	"
q51_4	"	q51_4 Encaminha para alguma entidade conveniada no município	"
q51_5	"	q51_5 Outro	"
q51_6	"	q51_6 Não atende	"
q51_5a	"	q51_5a Qual?	"
q52_0	"	q52_0 Não realiza	"
q52_1	"	q52_1 Realiza campanhas, mobilização e sensibilização	"
q52_2	"	q52_2 Realiza atividades de abordagem social em espaços públicos	"
q52_3	"	q52_3 Realiza busca ativa de famílias com situação de trabalho infantil para inclusão no Cadúnico	"
q52_4	"	q52_4 Encaminha/inclui crianças e adolescentes em trabalho infantil para os Serviços de Convivência	"
q52_5	"	q52_5 Encaminha/inclui famílias com situação de trabalho infantil para PAIF/CRAS	"
q52_6	"	q52_6 Encaminha/inclui famílias com situação de trabalho infantil para o PAEFI/CREAS	"
q52_7	"	q52_7 Encaminha famílias e indivíduos para a aplicação de medidas protetivas à família	"
q52_8	"	q52_8 Encaminha famílias com situação de trabalho infantil para programas e projetos de capacitação profissional	"
q52_9	"	q52_9 Encaminha famílias com situação de trabalho infantil para programas e projetos de inclusão produtiva e/ou geração de trabalho e renda	"
q52_10	"	q52_10 Encaminha famílias com situação de trabalho infantil para atendimento em outras políticas públicas	"
q52_11	"	q52_11 Encaminha famílias com situação de trabalho infantil para os órgãos de defesa e responsabilização	"
q52_12	"	q52_12 Elabora estudos e diagnósticos sobre o trabalho infantil no município	"
q53	"	q53 O órgão gestor da Assistência Social possui equipe de gestão exclusiva da Proteção Social Especial de Alta Complexidade?	"
q54	"	q54 O município possui Serviço de Acolhimento em Família Acolhedora para Criança e Adolescente?	"
q55	"	q55 Caso sim, o Serviço de Acolhimento em Família Acolhedora é regulamentado por lei municipal?	"
q56	"	q56 Em que ano o Serviço de Acolhimento em Família Acolhedora foi implantado no município?	"
q57	"	q57 A gestão do Programa/Serviço de Família Acolhedora no município é executado pelo(a):	"
q57a	"	q57a Qual?	"
q58	"	q58 Existe repasse de subsídio financeiro para as famílias acolhedoras?	"
q59	"	q59 Atualmente, quantas famílias aptas a receber as crianças/adolescentes com medidas protetivas estão cadastradas pelo Serviço?	"
q60	"	q60 Atualmente, quantas crianças/adolescentes estão sendo acolhidas por meio do Serviço de Família Acolhedora no município?	"
q61_1	"	q61_1 Controla o acesso às vagas, sendo responsável por indicar a Unidade de Acolhimento que receberá a criança/adolescente	"
q61_2	"	q61_2 Acompanha/monitora o fluxo de entradas e saídas de crianças e adolescentes nas Unidades	"
q61_3	"	q61_3 Centraliza as informações das medidas de acolhimento determinadas pelo poder Judiciário	"
q61_4	"	q61_4 Centraliza as informações dos acolhimentos emergenciais realizados pelo Conselho Tutelar	"
q61_5	"	q61_5 Promove a articulação dos serviços de acolhimento com os demais serviços da rede socioassistencial	"
q61_6	"	q61_6 Promove a articulação dos serviços de acolhimento com as demais políticas públicas e órgãos de defesa de direitos	"
q61_7	"	q61_7 Realiza supervisão e suporte técnico aos serviços de acolhimento	"
q61_8	"	q61_8 Monitora o tempo de permanência das crianças e adolescentes nos serviços de acolhimento	"
q61_9	"	q61_9 Fiscaliza a qualidade dos serviços	"
q61_10	"	q61_10 Não realiza nenhuma das atividades listadas acima	"
q62	"	q62 A Assistência Social do município tem programa/serviço de apoio e proteção a pessoas e famílias afetadas por situação de emergência ou de calamidade pública?	"
q63	"	q63 Nos últimos 12 (doze) meses a Assistência Social do município necessitou abrigar em alojamentos provisórios pessoas atingidas por situações de emergência ou de calamidade pública?	"
q64	"	q64 Caso sim, indique a quantidade de pessoas desabrigadas que foram acolhidas em alojamentos provisórios nos últimos 12 (doze) meses:	"
q65_1	"	q65_1 Alojamento específico para este fim	"
q65_2	"	q65_2 Albergues ou Unidades de Acolhimento já existentes	"
q65_3	"	q65_3 Tendas e Barracas	"
q65_4	"	q65_4 Aluguel Social	"
q65_5	"	q65_5 Locais designados para outras atividades (igrejas, escolas, quadras)	"
q65_6	"	q65_6 Outros	"
q65_5a	"	q65_5a Locais designados para outras atividades: Qual?	"
q65_6a	"	q 65_6a Outros: Qual?	"
q66	"	q66 A Assistência Social do município tem articulação com o Órgão Municipal de Defesa Civil?	"
q67	"	q67 O município utiliza embarcação/lancha para o desenvolvimento de atividades/serviços da Assistência Social?	"
q68_1	"	q68_1 Equipe do CRAS	"
q68_2	"	q68_2 Equipe do CREAS ou da Proteção Social Especial	"
q68_3	"	q68_3 Equipe do Cadastro Único	"
q68_4	"	q68_4 Equipes do órgão gestor da Assistência Social	"
q68_5	"	q68_5 Outros	"
q68_5a	"	q68_5a Quais?	"
q69	"	q69 Qual a periodicidade em que a lancha é utilizada pela Assistência Social no seu município?	"
q70_1	"	q70_1 Sim, para atender Ribeirinhos	"
q70_2	"	q70_2 Sim, para atender Indígenas	"
q70_3	"	q70_3 Sim, para atender Quilombolas	"
q70_4	"	q70_4 Sim, para atender Pescadores Artesanais	"
q70_5	"	q70_5 Sim, para atender Extrativistas	"
q70_6	"	q70_6 Sim, para atender Pantaneiros	"
q70_7	"	q70_7 Sim, para atender Outros	"
q70_7a	"	q70_7a Quais?	"
q71	"	q71 A Assistência Social desenvolve ações relativas ao Benefício de Prestação Continuada (BPC)?	"
q72_1	"	q72_1 Realizar estudos sobre as condições de vulnerabilidade das famílias com idosos e pessoas com deficiência	"
q72_2falha 'q72_2 Orientar a população sobre direitos e procedimentos para acesso ao BPC'
q72_3falha 'q72_3 Encaminhar possíveis beneficiários ao INSS'
q72_4	"	q72_4 Apoiar e acompanhar o processo de concessão do BPC	"
q72_5	"	q72_5 Distribuir aos CRAS e CREAS do município listas territorializadas das famílias com beneficiários do BPC	"
q72_6	"	q72_6 Inserir os beneficiários nos serviços socioassistenciais	"
q72_7	"	q72_7 Realizar o cadastramento dos beneficiários do BPC no Cadúnico	"
q72_8	"	q72_8 Articular com outros setores a inserção dos beneficiários nas diversas políticas sociais	"
q73_1a	"	q73_1a Auxílio Funeral - Se o Benefício é concedido no município	"
q73_1b	"	q73_1b Auxílio Funeral - Se o benefício é regulamentado	"
q73_1c	"	q73_1c Auxílio Funeral - Local onde o Benefício é concedido	"
q73_2a	"	q73_2a Auxílio Natalidade - Se o Benefício é concedido no município	"
q73_2b	"	q73_2b Auxílio Natalidade - Se o Benefício é regulamentado	"
q73_2c	"	q73_2c Auxílio Natalidade - Local onde o Benefício é concedido	"
q73_3a	"	q73_3a Benefício Eventual para situação de calamidade pública - Se o Benefício é concedido no município	"
q73_3b	"	q73_3b Benefício Eventual para situação de calamidade pública - Se o Benefício é regulamentado	"
q73_3c	"	q73_3c Benefício Eventual para situação de calamidade pública - Local onde o Benefício é concedido	"
q73_4a	"	q73_4a Outros Benefícios Eventuais para famílias em situação de vulnerabilidade temporária - Se o Benefício é concedido no município	"
q73_4b	"	q73_4b Outros Benefícios Eventuais para famílias em situação de vulnerabilidade temporária - Se o Benefício é regulamentado	"
q73_4c	"	q73_4c Outros Benefícios Eventuais para famílias em situação de vulnerabilidade temporária - Local onde o Benefício é concedido	"
q74	"	q74 O município possui um programa PRÓPRIO de transferência de renda (transferência de recursos municipais de forma constante a um público específico)?	"
q75	"	q75 O Programa próprio de transferência de renda do município está sob gestão do órgão gestor da assistência social?	"
q76	"	q76 Existe lei municipal que regulamente o programa de transferência de renda do município	"
q77	"	q77 Quantas famílias receberam o benefício do programa de transferência de renda do município no último mês em que ele foi concedido?	"
q77_99	"	q77_99 Não sabe	"
q78	"	q78 Qual é a Instância de Controle Social do Programa Bolsa Família no município?	"
q79	"	q79 O município possui profissional(s) exclusivamente dedicado(s) às atividades de Vigilância Socioassistencial?	"
q80a	"	q80a profissionais de nível superior	"
q80b	"	q80b profissionais de nível médio	"
q80c	"	q80c quantidade total (nível superior mais nível médio)	"
q81	"	q81 O órgão gestor possui diagnóstico socioterritorial do município?	"
q82	"	q82 Qual o ano de atualização do diagnóstico?	"
q83_1	"	q83_1 Quantidade de famílias vulneráveis no território	"
q83_2	"	q83_2 Perfil da população (composição etária, perfil socioeconômico, etc)	"
q83_3	"	q83_3 Indicadores relativos à demanda da população aos serviços socioassistenciais	"
q83_4	"	q83_4 Mapeamento das unidades de atendimento socioassistencial	"
q83_5	"	q83_5 Mapeamento de unidades de outras políticas públicas	"
q83_6	"	q83_6 Informações sobre o território de abrangência dos CRAS	"
q84	"	q84 O órgão gestor possui levantamento ou pesquisa que aponte o número de pessoas em situação de rua no município?	"
q85	"	q85 Caso sim, quantas pessoas?	"
q86	"	q86 Em que ano foi realizado o levantamento ou pesquisa (pop rua)?	"
q87	"	q87 Como foi realizado este levantamento ou pesquisa (pop rua)?	"
q88	"	q88 O órgão gestor possui levantamento ou pesquisa que aponte a existência de locais de exploração sexual de crianças e adolescentes no município?	"
q89	"	q89 Como foi realizado este levantamento ou pesquisa (exploração sexual)?	"
q90	"	q90 O órgão gestor possui levantamento ou pesquisa sobre a incidência de Trabalho Infantil no município?	"
q91	"	q91 Como foi realizado este levantamento ou pesquisa (trab infantil)?	"
q92_1	"	q92_1 Elaboração de informações territorializadas (listagens) das famílias do CadÚnico	"
q92_2	"	q92_2 Elaboração de informações territorializadas (listagens) dos beneficiários do Programa Bolsa Família	"
q92_3	"	q92_3 Elaboração de informações territorializadas (listagens) dos beneficiários em situação de descumprimento de condicionalidades	"
q92_4	"	q92_4 Elaboração de informações territorializadas (listagens) dos beneficiários do Benefício de Prestação Continuada	"
q92_5	"	q92_5 Estratégias de mobilização como distribuição de panfletos, colagem de cartazes, envio de correspondência, utilização de carros de som, entre outros	"
q92_6	"	q92_6 Apoio aos serviços socioassistenciais no planejamento da realização de visitas técnicas	"
q92_7	"	q92_7 Outras	"
q92_7a	"	q92_7a Qual?	"
q93	"	q93 Nos últimos 12 meses, o órgão gestor promoveu reunião/capacitação com os técnicos dos CRAS e CREAS para implantação do Prontuário SUAS?	"
q94	"	q94 O município possui definição de instrumentos e fluxos de Notificação Compulsória das situações de violência e violação de direitos atendidos?	"
q95	"	q95 O órgão gestor utiliza sistema de informação próprio para gerenciar a política de Assistência Social?	"
q96_1	"	q96_1 Registrar repasses de recursos para entidades	"
q96_2	"	q96_2 Registrar prestação de contas das entidades	"
q96_3	"	q96_3 Registrar execução física/atendimentos	"
q96_4	"	q96_4 Registrar unidades da rede socioassistencial pública	"
q96_5	"	q96_5 Registrar unidades da rede socioassistencial privada	"
q96_6	"	q96_6 Elaborar e armazenar Prontuário Eletrônico dos usuários dos Serviços Socioassistenciais	"
q96_7	"	q96_7 Outros	"
q96_7a	"	q96_7a Outros:Quais	"
q97_1	"	q97_1 Realiza visitas técnicas à rede socioassistencial	"
q97_2	"	q97_2 Realiza a gestão/validação das informações prestadas sobre as unidades	"
q97_3	"	q97_3 Possui instrumentos de coleta de dados próprios para levantamento de informações junto aos serviços	"
q97_4	"	q97_4 Produção de Indicadores próprios para aferição volume e qualidade dos serviços socioassitenciais	"
Resp1_1	"	Resp1_1 Nome	"
Resp1_2	"	Resp1_2 CPF:	"
Resp1_3	"	Resp1_3 Data	"
Resp1_4	"	Resp1_4 Cargo/Função do responsável pelo preenchimento:	"
Resp1_5	"	Resp1_5 Telefone	"
Resp1_6	"	Resp1_6 Email:	"
Resp2_99	"	Resp2_99 Não há representante da Vigilância designado no município	"
Resp2_1	"	Resp2_1 Nome do representante da vigilância	"
Resp2_2	"	Resp2_2 CPF do representante da vigilância	"
Resp2_3	"	Resp2_3 Cargo/Função do representante da vigilância	"
Resp2_4	"	Resp2_4 Telefone do representante da vigilância	"
Resp2_5	"	Resp2_5 Email do representante da vigilância	".
Execute.


SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gestão Municipal\Dados Gerais_23fev.sav'
  /COMPRESSED.


*** RÓTULO DOS VALORES DAS VARIÁVEIS ********************************************************************************************************************************************

ADD VALUE LABELS
	Ident_02	1	"	Alameda	"
		2	"	Área	"
		3	"	Avenida	"
		4	"	Campo	"
		5	"	Chácara	"
		6	"	Colônia	"
		7	"	Condomínio	"
		8	"	Conjunto	"
		9	"	Distrito	"
		10	"	Esplanada	"
		11	"	Estação	"
		12	"	Estrada	"
		13	"	Favela	"
		14	"	Fazenda	"
		15	"	Feira	"
		16	"	Jardim	"
		17	"	Ladeira	"
		18	"	Lago	"
		19	"	Lagoa	"
		20	"	Largo	"
		21	"	Loteamento	"
		22	"	Morro	"
		23	"	Núcleo	"
		24	"	Parque	"
		25	"	Passarela	"
		26	"	Pátio	"
		27	"	Praça	"
		28	"	Quadra	"
		29	"	Recanto	"
		30	"	Residencial	"
		31	"	Rodovia	"
		32	"	Rua	"
		33	"	Setor	"
		34	"	Sítio	"
		35	"	Travessa	"
		36	"	Trecho	"
		37	"	Trevo	"
		38	"	Vale	"
		39	"	Vereda	"
		40	"	Via	"
		41	"	Viaduto	"
		42	"	Viela	"
		43	"	Vila	"
		44	"	Outros	"
/	q1	1	"	Secretaria municipal exclusiva da área de Assistência Social	"
		2	"	Secretaria municipal em conjunto com outras políticas setoriais	"
		3	"	Fundação Pública	"
		4	"	Setor/Coordenadoria/Assessoria subordinado diretamente ao Gabinete do(a) Prefeito(a)	"
/	q2_1	0	"	Não	"
		1	"	Sim	"
/	q2_2	0	"	Não	"
		1	"	Sim	"
/	q2_3	0	"	Não	"
		1	"	Sim	"
/	q2_4	0	"	Não	"
		1	"	Sim	"
/	q2_5	0	"	Não	"
		1	"	Sim	"
/	q2_6	0	"	Não	"
		1	"	Sim	"
/	q2_7	0	"	Não	"
		1	"	Sim	"
/	q2_8	0	"	Não	"
		1	"	Sim	"
/	q3_1	1	"	Sim, na estrutura formal do órgão gestor	"
		2	"	Sim, de maneira informal	"
		3	"	Não constituída	"
/	q3_2	1	"	Sim, na estrutura formal do órgão gestor	"
		2	"	Sim, de maneira informal	"
		3	"	Não constituída	"
/	q3_3	1	"	Sim, na estrutura formal do órgão gestor	"
		2	"	Sim, de maneira informal	"
		3	"	Não constituída	"
/	q3_4	1	"	Sim, na estrutura formal do órgão gestor	"
		2	"	Sim, de maneira informal	"
		3	"	Não constituída	"
/	q3_5	1	"	Sim, na estrutura formal do órgão gestor	"
		2	"	Sim, de maneira informal	"
		3	"	Não constituída	"
/	q3_6	1	"	Sim, na estrutura formal do órgão gestor	"
		2	"	Sim, de maneira informal	"
		3	"	Não constituída	"
/	q3_7	1	"	Sim, na estrutura formal do órgão gestor	"
		2	"	Sim, de maneira informal	"
		3	"	Não constituída	"
/	q3_8	1	"	Sim, na estrutura formal do órgão gestor	"
		2	"	Sim, de maneira informal	"
		3	"	Não constituída	"
/	q4	0	"	Não	"
		1	"	Sim	"
/	q5	0	"	Não	"
		1	"	Sim	"
/	q6	1	"	Educação	"
		2	"	Saúde	"
		99	"	Outro	"
/	q7_1	0	"	Não realiza	"
		1	"	Cadastramento	"
		2	"	Atualização Cadastral	"
		99	"	Em ambos	"
/	q7_2	0	"	Não realiza	"
		1	"	Cadastramento	"
		2	"	Atualização Cadastral	"
		99	"	Em ambos	"
/	q7_3	0	"	Não realiza	"
		1	"	Cadastramento	"
		2	"	Atualização Cadastral	"
		99	"	Em ambos	"
/	q7_4	0	"	Não realiza	"
		1	"	Cadastramento	"
		2	"	Atualização Cadastral	"
		99	"	Em ambos	"
/	q7_5	0	"	Não realiza	"
		1	"	Cadastramento	"
		2	"	Atualização Cadastral	"
		99	"	Em ambos	"
/	q7_6	0	"	Não realiza	"
		1	"	Cadastramento	"
		2	"	Atualização Cadastral	"
		99	"	Em ambos	"
/	q7_7	0	"	Não realiza	"
		1	"	Cadastramento	"
		2	"	Atualização Cadastral	"
		99	"	Em ambos	"
/	q7_8	0	"	Não realiza	"
		1	"	Cadastramento	"
		2	"	Atualização Cadastral	"
		99	"	Em ambos	"
/	q11	0	"	Não	"
		1	"	Sim	"
/	q12	0	"	Não	"
		1	"	Sim	"
/	q14	0	"	Não	"
		1	"	Sim	"
/	q16	0	"	Não	"
		1	"	Sim	"
/	q19_1	0	"	Não	"
		1	"	Sim	"
/	q19_2	0	"	Não	"
		1	"	Sim	"
/	q19_3	0	"	Não	"
		1	"	Sim	"
/	q19_4	0	"	Não	"
		1	"	Sim	"
/	q19_5	0	"	Não	"
		1	"	Sim	"
/	q19_6	0	"	Não	"
		1	"	Sim	"
/	q19_7	0	"	Não	"
		1	"	Sim	"
/	q19_8	0	"	Não	"
		1	"	Sim	"
/	q19_9	0	"	Não	"
		1	"	Sim	"
/	q19_10	0	"	Não	"
		1	"	Sim	"
/	q19_11	0	"	Não	"
		1	"	Sim	"
/	q19_12	0	"	Não	"
		1	"	Sim	"
/	q19_13	0	"	Não	"
		1	"	Sim	"
/	q19_14	0	"	Não	"
		1	"	Sim	"
/	q19_15	0	"	Não	"
		1	"	Sim	"
/	q19_16	0	"	Não	"
		1	"	Sim	"
/	q19_17	0	"	Não	"
		1	"	Sim	"
/	q19_18	0	"	Não	"
		1	"	Sim	"
/	q19_19	0	"	Não	"
		1	"	Sim	"
/	q20	1	"	Mais de uma vez por ano	"
		2	"	Anualmente	"
		3	"	Bienalmente	"
		4	"	De quatro em quatro anos	"
		5	"	Mais de quatro anos	"
/	q21_99	0	"	Não	"
		1	"	Sim	"
/	q22	0	"	Não	"
		1	"	Sim	"
/	q23	1	"	1 vez no ano	"
		2	"	De 2 a 3 vezes no ano	"
		3	"	De 4 a 6 vezes no ano	"
		4	"	De 7 a 10 vezes no ano	"
		5	"	Mais de 10 vezes no ano	"
/	q24	0	"	Nenhuma	"
		1	"	Uma visita	"
		2	"	Duas a três visitas	"
		3	"	Quatro a seis visitas	"
		4	"	Mais de seis visitas	"
/	q25_1	0	"	Não	"
		1	"	Sim	"
/	q25_2	0	"	Não	"
		1	"	Sim	"
/	q25_3	0	"	Não	"
		1	"	Sim	"
/	q25_4	0	"	Não	"
		1	"	Sim	"
/	q25_5	0	"	Não	"
		1	"	Sim	"
/	q25_6	0	"	Não	"
		1	"	Sim	"
/	q25_7	0	"	Não	"
		1	"	Sim	"
/	q25_8	0	"	Não	"
		1	"	Sim	"
/	q25_9	0	"	Não	"
		1	"	Sim	"
/	q25_10	0	"	Não	"
		1	"	Sim	"
/	q25_11	0	"	Não	"
		1	"	Sim	"
/	q25_12	0	"	Não	"
		1	"	Sim	"
/	q25_13	0	"	Não	"
		1	"	Sim	"
/	q25_14	0	"	Não	"
		1	"	Sim	"
/	q25_15	0	"	Não	"
		1	"	Sim	"
/	q25_16	0	"	Não	"
		1	"	Sim	"
/	q25_17	0	"	Não	"
		1	"	Sim	"
/	q25_18	0	"	Não	"
		1	"	Sim	"
/	q25_19	0	"	Não	"
		1	"	Sim	"
/	q25_20	0	"	Não	"
		1	"	Sim	"
/	q25_21	0	"	Não	"
		1	"	Sim	"
/	q25_99	0	"	Não	"
		1	"	Sim	"
/	q26	0	"	Nenhuma vez	"
		1	"	Uma vez	"
		2	"	Duas ou três vezes	"
		3	"	Quatro a seis vezes	"
		4	"	Mais de seis vezes	"
/	q27_1	0	"	Não	"
		1	"	Sim	"
/	q27_2	0	"	Não	"
		1	"	Sim	"
/	q27_3	0	"	Não	"
		1	"	Sim	"
/	q27_4	0	"	Não	"
		1	"	Sim	"
/	q27_5	0	"	Não	"
		1	"	Sim	"
/	q27_6	0	"	Não	"
		1	"	Sim	"
/	q27_7	0	"	Não	"
		1	"	Sim	"
/	q29_0	0	"	Não	"
		1	"	Sim	"
/	q29_1	0	"	Não	"
		1	"	Sim	"
/	q29_2	0	"	Não	"
		1	"	Sim	"
/	q29_3	0	"	Não	"
		1	"	Sim	"
/	q29_4	0	"	Não	"
		1	"	Sim	"
/	q29_5	0	"	Não	"
		1	"	Sim	"
/	q29_6	0	"	Não	"
		1	"	Sim	"
/	q30	1	"	O Prefeito	"
		2	"	O Secretário(a) Municipal de Assistência Social	"
		3	"	Outro funcionário da Secretaria de Assistência Social	"
		4	"	Secretário ou técnico de outra área	"
/	q31	0	"	Não	"
		1	"	Sim	"
/	q32	0	"	Não recebe	"
		1	"	Sim, fundo-a-fundo	"
		2	"	Sim, via convênio	"
		3	"	Sim, por convênio e fundo-a-fundo	"
/	q34	0	"	Não	"
		1	"	Sim, com recursos do Fundo Municipal de Assistência Social (FMAS)	"
		2	"	Sim, com recursos de outras fontes	"
		3	"	Sim, com recursos do FMAS e de outras fontes	"
/	q38_1a	0	"	Não	"
		1	"	Sim	"
/	q38_1b	1	"	Autorização concedida	"
		2	"	Edital publicado	"
		3	"	Prova(s) realizada(s)	"
		4	"	Resultado homologado	"
/	q38_2a	0	"	Não	"
		1	"	Sim	"
/	q38_2b	1	"	Autorização concedida	"
		2	"	Edital publicado	"
		3	"	Prova(s) realizada(s)	"
		4	"	Resultado homologado	"
/	q39_1a	0	"	Não	"
		1	"	Sim	"
/	q39_2a	0	"	Não	"
		1	"	Sim	"
/	q40	0	"	Não	"
		1	"	Sim	"
/	q41	0	"	Não	"
		1	"	Sim	"
/	q42_1	0	"	Não	"
		1	"	Sim	"
/	q42_2	0	"	Não	"
		1	"	Sim	"
/	q42_3	0	"	Não	"
		1	"	Sim	"
/	q44	0	"	Não	"
		1	"	Sim	"
/	q45_1	0	"	Não	"
		1	"	Sim	"
/	q45_2	0	"	Não	"
		1	"	Sim	"
/	q45_3	0	"	Não	"
		1	"	Sim	"
/	q47_1	0	"	Não	"
		1	"	Sim	"
/	q47_2	0	"	Não	"
		1	"	Sim	"
/	q47_3	0	"	Não	"
		1	"	Sim	"
/	q47_4	0	"	Não	"
		1	"	Sim	"
/	q47_5	0	"	Não	"
		1	"	Sim	"
/	q47_6	0	"	Não	"
		1	"	Sim	"
/	q47_7	0	"	Não	"
		1	"	Sim	"
/	q47_8	0	"	Não	"
		1	"	Sim	"
/	q47_9	0	"	Não	"
		1	"	Sim	"
/	q47_10	0	"	Não	"
		1	"	Sim	"
/	q47_11	0	"	Não	"
		1	"	Sim	"
/	q47_12	0	"	Não	"
		1	"	Sim	"
/	q47_13	0	"	Não	"
		1	"	Sim	"
/	q47_14	0	"	Não	"
		1	"	Sim	"
/	q47_15	0	"	Não	"
		1	"	Sim	"
/	q47_16	0	"	Não	"
		1	"	Sim	"
/	q47_17	0	"	Não	"
		1	"	Sim	"
/	q47_18	0	"	Não	"
		1	"	Sim	"
/	q47_19	0	"	Não	"
		1	"	Sim	"
/	q47_20	0	"	Não	"
		1	"	Sim	"
/	q48_1a	0	"	Não	"
		1	"	Sim	"
/	q48_1b	0	"	Não	"
		1	"	Sim	"
/	q48_1e	0	"	Não	"
		1	"	Sim	"
/	q48_1f	0	"	Não	"
		1	"	Sim	"
/	q48_1g	0	"	Não	"
		1	"	Sim	"
/	q48_2a	0	"	Não	"
		1	"	Sim	"
/	q48_2c	0	"	Não	"
		1	"	Sim	"
/	q48_2d	0	"	Não	"
		1	"	Sim	"
/	q48_2e	0	"	Não	"
		1	"	Sim	"
/	q48_2f	0	"	Não	"
		1	"	Sim	"
/	q48_2g	0	"	Não	"
		1	"	Sim	"
/	q48_3a	0	"	Não	"
		1	"	Sim	"
/	q48_3c	0	"	Não	"
		1	"	Sim	"
/	q48_3d	0	"	Não	"
		1	"	Sim	"
/	q48_3e	0	"	Não	"
		1	"	Sim	"
/	q48_3f	0	"	Não	"
		1	"	Sim	"
/	q48_3g	0	"	Não	"
		1	"	Sim	"
/	q50_0	0	"	Não	"
		1	"	Sim	"
/	q50_1	0	"	Não	"
		1	"	Sim	"
/	q50_2	0	"	Não	"
		1	"	Sim	"
/	q50_3	0	"	Não	"
		1	"	Sim	"
/	q50_4	0	"	Não	"
		1	"	Sim	"
/	q50_5	0	"	Não	"
		1	"	Sim	"
/	q50_6	0	"	Não	"
		1	"	Sim	"
/	q51_1	0	"	Não	"
		1	"	Sim	"
/	q51_2	0	"	Não	"
		1	"	Sim	"
/	q51_3	0	"	Não	"
		1	"	Sim	"
/	q51_4	0	"	Não	"
		1	"	Sim	"
/	q51_5	0	"	Não	"
		1	"	Sim	"
/	q51_6	0	"	Não	"
		1	"	Sim	"
/	q52_0	0	"	Não	"
		1	"	Sim	"
/	q52_1	0	"	Não	"
		1	"	Sim	"
/	q52_2	0	"	Não	"
		1	"	Sim	"
/	q52_3	0	"	Não	"
		1	"	Sim	"
/	q52_4	0	"	Não	"
		1	"	Sim	"
/	q52_5	0	"	Não	"
		1	"	Sim	"
/	q52_6	0	"	Não	"
		1	"	Sim	"
/	q52_7	0	"	Não	"
		1	"	Sim	"
/	q52_8	0	"	Não	"
		1	"	Sim	"
/	q52_9	0	"	Não	"
		1	"	Sim	"
/	q52_10	0	"	Não	"
		1	"	Sim	"
/	q52_11	0	"	Não	"
		1	"	Sim	"
/	q52_12	0	"	Não	"
		1	"	Sim	"
/	q53	1	"	Sim, possui equipe exclusiva	"
		2	"	Não possui equipe exclusiva	"
/	q54	0	"	Não	"
		1	"	Sim	"
/	q55	0	"	Não	"
		1	"	Sim	"
/	q57	1	"	Secretaria Municipal de Assistência Social	"
		2	"	Outra secretaria do município	"
		3	"	Diretamente pelo gabinete da Prefeitura	"
		4	"	Organização Não Governamental – ONG	"
		99	"	Outro	"
/	q58	0	"	Não	"
		1	"	Sim	"
/	q61_1	0	"	Não	"
		1	"	Sim	"
/	q61_2	0	"	Não	"
		1	"	Sim	"
/	q61_3	0	"	Não	"
		1	"	Sim	"
/	q61_4	0	"	Não	"
		1	"	Sim	"
/	q61_5	0	"	Não	"
		1	"	Sim	"
/	q61_6	0	"	Não	"
		1	"	Sim	"
/	q61_7	0	"	Não	"
		1	"	Sim	"
/	q61_8	0	"	Não	"
		1	"	Sim	"
/	q61_9	0	"	Não	"
		1	"	Sim	"
/	q61_10	0	"	Não	"
		1	"	Sim	"
/	q62	0	"	Não	"
		1	"	Sim	"
/	q63	0	"	Não	"
		1	"	Sim	"
/	q65_1	0	"	Não	"
		1	"	Sim	"
/	q65_2	0	"	Não	"
		1	"	Sim	"
/	q65_3	0	"	Não	"
		1	"	Sim	"
/	q65_4	0	"	Não	"
		1	"	Sim	"
/	q65_5	0	"	Não	"
		1	"	Sim	"
/	q65_6	0	"	Não	"
		1	"	Sim	"
/	q66	0	"	Não	"
		1	"	Sim	"
		99	"	Não há Órgão de Defesa Civil no município	"
/	q67	0	"	Não	"
		1	"	Sim	"
/	q68_1	0	"	Não	"
		1	"	Sim	"
/	q68_2	0	"	Não	"
		1	"	Sim	"
/	q68_3	0	"	Não	"
		1	"	Sim	"
/	q68_4	0	"	Não	"
		1	"	Sim	"
/	q68_5	0	"	Não	"
		1	"	Sim	"
/	q69	1	"	Menos que 1 vez por mês	"
		2	"	Mensalmente	"
		3	"	Quinzenalmente	"
		4	"	1 vez por semana	"
		5	"	2 ou 3 vezes por semana	"
		6	"	4 ou mais vezes por semana	"
/	q70_1	0	"	Não	"
		1	"	Sim	"
/	q70_2	0	"	Não	"
		1	"	Sim	"
/	q70_3	0	"	Não	"
		1	"	Sim	"
/	q70_4	0	"	Não	"
		1	"	Sim	"
/	q70_5	0	"	Não	"
		1	"	Sim	"
/	q70_6	0	"	Não	"
		1	"	Sim	"
/	q70_7	0	"	Não	"
		1	"	Sim	"
/	q71	0	"	Não	"
		1	"	Sim	"
/	q72_1	0	"	Não	"
		1	"	Sim	"
/	q72_2falha	0	"	Não	"
		1	"	Sim	"
/	q72_3falha	0	"	Não	"
		1	"	Sim	"
/	q72_4	0	"	Não	"
		1	"	Sim	"
/	q72_5	0	"	Não	"
		1	"	Sim	"
/	q72_6	0	"	Não	"
		1	"	Sim	"
/	q72_7	0	"	Não	"
		1	"	Sim	"
/	q72_8	0	"	Não	"
		1	"	Sim	"
/	q73_1a	0	"	Não	"
		1	"	Sim	"
/	q73_1b	0	"	Não	"
		1	"	Sim	"
/	q73_1c	1	"	Na sede do órgão gestor	"
		2	"	Em unidades da rede socioassistenciais	"
		3	"	Em ambas	"
/	q73_2a	0	"	Não	"
		1	"	Sim	"
/	q73_2b	0	"	Não	"
		1	"	Sim	"
/	q73_2c	1	"	Na sede do órgão gestor	"
		2	"	Em unidades da rede socioassistencial	"
		3	"	Em ambas	"
/	q73_3a	0	"	Não	"
		1	"	Sim	"
/	q73_3b	0	"	Não	"
		1	"	Sim	"
/	q73_3c	1	"	Na sede do órgão gestor	"
		2	"	Em unidades da rede socioassistencial	"
		3	"	Em ambas	"
/	q73_4a	0	"	Não	"
		1	"	Sim	"
/	q73_4b	0	"	Não	"
		1	"	Sim	"
/	q73_4c	1	"	Na sede do órgão gestor	"
		2	"	Em unidades da rede socioassistencial	"
		3	"	Em ambas	"
/	q74	0	"	Não	"
		1	"	Sim	"
/	q75	0	"	Não	"
		1	"	Sim	"
/	q76	0	"	Não	"
		1	"	Sim	"
/	q77_99	0	"	Não	"
		1	"	Sim	"
/	q78	1	"	O próprio Conselho Municipal de Assistência Social (CMAS), ou comissão permanente do CMAS.	"
		2	"	Instância/comitê exclusivo do Programa Bolsa Família (PBF).	"
		3	"	Conselho de outra Política.	"
/	q79	0	"	Não	"
		1	"	Sim	"
/	q81	0	"	Não	"
		1	"	Sim	"
/	q83_1	0	"	Não	"
		1	"	Sim	"
/	q83_2	0	"	Não	"
		1	"	Sim	"
/	q83_3	0	"	Não	"
		1	"	Sim	"
/	q83_4	0	"	Não	"
		1	"	Sim	"
/	q83_5	0	"	Não	"
		1	"	Sim	"
/	q83_6	0	"	Não	"
		1	"	Sim	"
/	q84	0	"	Não	"
		1	"	Sim	"
/	q87	1	"	O levantamento foi realizado pela equipe do próprio órgão gestor ou de outra unidade do poder público municipal	"
		2	"	O órgão gestor e/ou outra unidade do poder público municipal contratou instituição para este fim	"
		3	"	O órgão gestor obteve esta informação através de levantamento ou pesquisa já realizada por outra instituição	"
/	q88	0	"	Não	"
		1	"	Sim	"
/	q89	1	"	O levantamento foi realizado pela equipe do próprio órgão gestor ou de outra unidade do poder público municipal	"
		2	"	O órgão gestor e/ou outra unidade do poder público municipal contratou instituição para este fim	"
		3	"	O órgão gestor obteve esta informação através de levantamento ou pesquisa já realizada por outra instituição	"
/	q90	0	"	Não	"
		1	"	Sim	"
/	q91	1	"	O levantamento foi realizado pela equipe do próprio órgão gestor ou de outra unidade do poder público municipal	"
		2	"	O órgão gestor e/ou outra unidade do poder público municipal contratou instituição para este fim	"
		3	"	O órgão gestor obteve esta informação através de levantamento ou pesquisa já realizada por outra instituição	"
/	q92_1	0	"	Não	"
		1	"	Sim	"
/	q92_2	0	"	Não	"
		1	"	Sim	"
/	q92_3	0	"	Não	"
		1	"	Sim	"
/	q92_4	0	"	Não	"
		1	"	Sim	"
/	q92_5	0	"	Não	"
		1	"	Sim	"
/	q92_6	0	"	Não	"
		1	"	Sim	"
/	q92_7	0	"	Não	"
		1	"	Sim	"
/	q93	0	"	Não	"
		1	"	Sim	"
/	q94 	1	"	Sim, sendo que o órgão gestor da Assistência Social é responsável pelo processo	"
		2	"	Sim, a Assistencia Social notifica, mas outra política pública é o responsável pelo processo	"
		3	"	Sim, mas as unidades de Assistência Social não notificam	"
		4	"	Não possui	"
/	q95	0	"	Não	"
		1	"	Sim	"
/	q96_1	0	"	Não	"
		1	"	Sim	"
/	q96_2	0	"	Não	"
		1	"	Sim	"
/	q96_3	0	"	Não	"
		1	"	Sim	"
/	q96_4	0	"	Não	"
		1	"	Sim	"
/	q96_5	0	"	Não	"
		1	"	Sim	"
/	q96_6	0	"	Não	"
		1	"	Sim	"
/	q96_7	0	"	Não	"
		1	"	Sim	"
/	q97_1	0	"	Não	"
		1	"	Sim	"
/	q97_2	0	"	Não	"
		1	"	Sim	"
/	q97_3	0	"	Não	"
		1	"	Sim	"
/	q97_4	0	"	Não	"
		1	"	Sim	"
/	Resp2_99	0	"	Não	"
		1	"	Sim	" .
EXECUTE.
				

SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gestão Municipal\Dados Gerais_23fev.sav'
  /COMPRESSED.


***********************************


Numeric IBGE (F11.0).
COMPUTE IBGE = codigo_ibge.
EXECUTE.

SORT CASES BY IBGE(A).

MATCH FILES /FILE=*
  /TABLE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ '+
    'Tratamento\Gestão Municipal\Miscelanea\Dados de referência_municípios_Revisado5570_26_03_2014.sav'
  /RENAME (Município Pop_Rural2010 Pop_Urbana2010 uf_s area = d0 d1 d2 d3 d4) 
  /BY IBGE
  /DROP= d0 d1 d2 d3 d4.
EXECUTE.


Numeric FX_pop (F1.0).

IF (Pop_Total2010 <5000) FX_pop = 1.
IF (Pop_Total2010 >=5000 & Pop_Total2010 < 20000)  FX_pop = 2.
IF (Pop_Total2010 >=20000 & Pop_Total2010 < 50000)  FX_pop = 3.
IF (Pop_Total2010 >=50000 & Pop_Total2010 < 100000)  FX_pop = 4.
IF (Pop_Total2010 >= 100000 & Pop_Total2010 < 300000)  FX_pop = 5.
IF (Pop_Total2010 >=300000 & Pop_Total2010 < 900000)  FX_pop = 6.
IF (Pop_Total2010 > 900000) FX_pop = 7.
Execute.

ADD VALUE LABELS  FX_pop 1' menos de 5 mil' 2 '> 5.000 e < 20.000'  3 '> 20.000 e < 50.000'  4 '> 50.000 e < 1000.000'  5 '> 100.000 e < 300.000'   6 '> 300.000 e < 900.000'  7 '> 900.000'.



SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gestão Municipal\Dados Gerais_23fev.sav'
  /COMPRESSED.


MATCH FILES /FILE=*
  /TABLE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ '+
    'Tratamento\Gestão Municipal\Miscelanea\Baixados_Incompletos_GM_2015.sav'
  /BY IBGE.
EXECUTE.


SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gestão Municipal\Dados Gerais_23fev.sav'
  /COMPRESSED.



************************Substituir  "PONTO" por "VIRGULA" nas variáveis abaixo, antes de modificar o TIPO*******************************************************************************************************************

Alter Type 
q33_1a  (F14.2)
q33_1b  (F14.2)
q33_2a  (F14.2)
q33_2b  (F14.2)
q33_3a  (F14.2)
q33_3b  (F14.2)
q33_4a  (F14.2)
q33_4b  (F14.2).
Execute.


SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gestão Municipal\Dados Gerais_23fev.sav'
  /COMPRESSED.


SAVE OUTFILE='\\mds044007\Nucleo_Monitoramento\Censo SUAS\2015_Censo_SUAS\_Bases de Dados 2015 _ Tratamento\Gestão Municipal\CensoSUAS_2015_GestãoMunicipal_final.sav'
  /COMPRESSED.


