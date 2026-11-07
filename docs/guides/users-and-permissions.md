
# Linux Users, Groups and Permissions

## 1. Overview

Linux uses users, groups, file permissions and Access Control Lists (ACL) to control access to files and directories.

This guide documents practical exercises performed in the Ubuntu Server lab.

## 2. Users and Groups

The lab uses the following accounts and group:

- User: `devops`
- User: `labuser`
- Group: `labadmins`

### Display user information

```bash
whoami
id
getent passwd labuser
```

### Display group information

```bash
getent group labadmins
groups
```

## 3. File Ownership and Permissions

Linux filesystem objects have an owner and an associated group.

### Inspect file ownership and permissions

```bash
ls -l /home/devops/permissions-lab/
stat -c "%U %G %a %A %n" /home/devops/permissions-lab/
```

The `stat` command displays:

- Owner
- Group
- Numeric permissions
- Symbolic permissions
- File or directory name

## 4. Access Control Lists (ACL)

ACLs provide additional access control for individual users and groups.

### Inspect file ACL

```bash
getfacl /home/devops/permissions-lab/file1.txt
```

A verified ACL configuration for `file1.txt` contained:

```text
# owner: devops
# group: labadmins
user::rw-
group::r--
other::---
```

### Inspect directory ACL

```bash
getfacl /home/devops/permissions-lab
```

A verified ACL entry for `labuser` was:

```text
user:labuser:rwx
mask::r-x
```

The effective permissions were:

```text
user:labuser:rwx    #effective:r-x
```

The ACL mask limits the effective permissions of named users, named groups and the owning group.

Although `labuser` had an ACL entry granting `rwx`, the effective permissions were `r-x` because the mask did not include write permission.

## 5. Directory Permissions and File Deletion

Deleting a file requires write and execute permissions on its parent directory.

During the lab, the following command was tested:

```bash
sudo -u labuser rm -f /home/devops/permissions-lab/file2.txt
```

The operation returned:

```text
Permission denied
```

This demonstrated that file deletion depends on permissions on the parent directory, not only on the permissions of the file itself.

## 6. Sudo Privileges

The `sudo` command allows authorized users to execute commands with elevated privileges.

### Inspect sudo privileges

```bash
sudo -l
```

The `devops` account was verified to have the following privilege:

```text
(devops) may run the following commands:
(ALL : ALL) ALL
```

This indicates that the account can execute commands as any user and group through sudo.

## 7. Troubleshooting Commands

Useful commands for investigating Linux access-control issues:

```bash
whoami
id
getent passwd
getent group
groups
ls -l
stat
getfacl
sudo -l
```

## 8. Security Considerations

- Follow the principle of least privilege.
- Avoid unnecessary sudo privileges.
- Use groups to manage access.
- Inspect ACL masks when effective permissions differ from ACL entries.
- Verify directory permissions when troubleshooting file deletion.
- Avoid unnecessarily permissive permissions.
