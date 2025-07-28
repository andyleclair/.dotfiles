function s3_dump
    set -f year $argv[1]
    aws s3 ls s3://appcues-exports/snowflake-exports/prod/$year/ | awk '{print "https://appcues-exports.s3.us-west-2.amazonaws.com/snowflake-exports/prod/$year/" $4}'
end
