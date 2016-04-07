class update {
	stage { pre: before => Stage[main] }

	class apt_get_update {
		exec { 'initial apt-get update':
			command => 'sudo apt-get update',
			path	=> '/usr/bin',
			timeout => 3600
		}
	}

	# Run apt-get update
	class { 'apt_get_update':
		stage => pre
	}
}