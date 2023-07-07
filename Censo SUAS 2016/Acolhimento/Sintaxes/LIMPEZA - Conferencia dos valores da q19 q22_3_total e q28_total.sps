
*conferindo os valores da q19, q22_3_total e q28_total

IF  (q22_3_total > q19) q19 = q22_3_total.
EXECUTE.

IF  (q28_total > q19) q19 = q28_total.
EXECUTE.

IF  (q22_3_total < q19) q22_3_total_si= q19 - q22_3_total.
EXECUTE.

IF  (q28_total < q19) q28_si= q19 - q28_total.
EXECUTE.





