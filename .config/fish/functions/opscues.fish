function opscues
    saml2aws login --skip-prompt
    AWS_REGION='us-west-2' saml2aws exec --region=us-west-2 -- $HOME/src/opscues_rs/target/release/opscues_rs $argv
end
