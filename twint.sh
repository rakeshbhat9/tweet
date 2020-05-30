#!/bin/sh
input="//home/rakeshbhat9/repos/twint/nm_follow.csv"
while read -r line
echo "Getting data from user $line"
do
  twint -u "$line" --since "2020-05-01 00:00:00" \
        --min-likes 100 \
        -fr \
        --limit 60 \
        >> followers_tweet_v1.csv
done < "$input"