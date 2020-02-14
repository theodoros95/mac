export BASH_SILENCE_DEPRECATION_WARNING=1

alias gcc='gcc-9'
alias cirrus='ssh s2007066@cirrus-msc.epcc.ed.ac.uk'
alias archer='s2007066@login.archer.ac.uk'

cirrus=s2007066@cirrus-msc.epcc.ed.ac.uk
archer=s2007066@login.archer.ac.uk

cirrus_mount()
{
	mkdir -p ~/cirrus
	sshfs $cirrus:/lustre/home/d171/s2007066 cirrus/ -o volname=Cirrus
}

cirrus_unmount()
{
	umount ~/cirrus
	rmdir ~/cirrus
}

