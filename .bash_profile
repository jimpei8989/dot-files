if [[ -f ~/Records/.bash_profile_shared ]]; then
    source ~/Records/.bash_profile_shared
fi

if [[ $HOSTNAME =~ MBP ]] && [[ -f ~/Records/.bash_profile_Mac ]]; then
    source ~/Records/.bash_profile_Mac
fi

if [[ $HOSTNAME =~ linux ]] && [[ -f ~/Records/.bash_profile_Workstation ]]; then
    source ~/Records/.bash_profile_Workstation
fi

if [[ $HOSTNAME =~ oasis ]] && [[ -f ~/Records/.bash_profile_Workstation ]]; then
    source ~/Records/.bash_profile_Workstation
fi

if [[ $HOSTNAME =~ meow ]] && [[ -f ~/Records/.bash_profile_Workstation ]]; then
    source ~/Records/.bash_profile_Workstation
fi

if [[ $HOSTNAME =~ MJRO ]] && [[ -f ~/Records/.bash_profile_Workstation ]]; then
    source ~/Records/.bash_profile_MJRO
fi

if [[ $HOSTNAME =~ nlp ]] && [[ -f ~/Records/.bash_profile_Workstation ]]; then
    source ~/Records/.bash_profile_NLP
fi
