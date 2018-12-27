if [ -f ~/Records/.bash_profile_shared ]; then
    source ~/Records/.bash_profile_shared
fi

if [[ $HOSTNAME =~ MBP ]] && [[ -f Records/.bash_profile_Mac ]]; then
    source Records/.bash_profile_Mac
fi

if [[ $HOSTNAME =~ linux ]] && [[ -f Records/.bash_profile_Workstation ]]; then
    source Records/.bash_profile_Workstation
fi
