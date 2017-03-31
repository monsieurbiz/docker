# SSH server image

You can SSH on the container made by this image only with SSH keys.

To run it:

```
docker run -d -P --name sshd -v `pwd`/authorized_keys:/root/.ssh/authorized_keys monsieurbiz/sshd
docker port sshd
```

You just have to create the `authorized_keys` file with your SSH keys.

