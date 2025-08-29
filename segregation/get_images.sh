#!/bin/bash

base="http://rcweb.dartmouth.edu/IEC/pnovosad/png"
metrics=("iso" "dissim")
groups=("sc" "muslim")
outcomes=(
  city_pop_pc11
  ln_city_pop
  ln_growth
  log_area_pc11
  city_origin_year
  muslim_pop_share
  sc_pop_share
  ln_cons_pc
  muslim_job_share
  sc_job_share
  ed_yrs
  ed_yrs_muslim
  ed_yrs_sc
  muslim_ed_gap
  sc_ed_gap
  p25
  cons_pc
  cons_pc_sc
  cons_pc_muslim
  muslim_ln_cons_gap
  sc_ln_cons_gap
  event_count
  religious_event_count
  non_rel_event_count
  town_cons_gini
  rural_land_gini
  rural_cons_gini
)

for m in "${metrics[@]}"; do
  for g in "${groups[@]}"; do
    for o in "${outcomes[@]}"; do
      f="bin_${m}_${g}_${o}.png"
      echo "Downloading $f"
      curl -L -A "Mozilla/5.0" -O "$base/$f"
    done
  done
done
