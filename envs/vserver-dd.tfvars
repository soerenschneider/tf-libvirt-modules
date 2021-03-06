provider_uri = "qemu+ssh://soeren@vserver.dd.soerenschneider.net/system"

domains = {
  fileserver = {
    memory        = 2048
    vcpus         = 4
    running       = true
    mac           = "ee:32:bc:cf:89:9d"
    os            = "debian"
    disk_size_b   = 7158279168 # 7g
    block_devices = ["/dev/disk/by-uuid/2a545d87-a795-42d9-be84-3c6a10f09d5d"]
  }
  sauron = {
    memory        = 1024
    vcpus         = 1
    running       = true
    mac           = "ee:32:cc:12:f0:10"
    os            = "debian"
    disk_size_b   = 10737418240 # 10g
    block_devices = []
  }
}
