function a
    if echo $argv[1] | grep -q '^i-'
        echo "SSHing to $argv[1]"
        ssh deploy@bzero-$argv[1]
    else
        saml2aws login --skip-prompt
        set -f instances $(saml2aws exec --region=us-west-2 -- aws --region $AWS_REGION ec2 describe-instances $query --filter "Name=tag:Name,Values=*$argv[1]*")
        set -f instance_ids $(echo $instances | jq -r '.Reservations[].Instances[].PrivateIpAddress')
        set -f instance $(random choice $instance_ids)
        echo "Found $(count $instance_ids) instances, picking one at random"
        echo "SSHing to $instance"
        ssh deploy@instance
    end
end
