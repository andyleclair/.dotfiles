function opscues
  saml2aws login --skip-prompt
  saml2aws exec --region=us-west-2 -- AWS_REGION=$AWS_REGION $HOME/src/opscues/opscues  $argv 
end
