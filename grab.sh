#!/bin/bash
name=`date +"%Y%m%d"`
for i in system_memory servers cpu motherboards flash_card_memory hard_removable_drives; do
  curl -s http://www.pricewatch.com/$i/ > data/${name}-${i}
done
