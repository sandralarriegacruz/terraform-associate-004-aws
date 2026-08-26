# 📄 Cheat Sheet: Terraform CLI Commands & HCL Built-in Functions

## 🚀 Core CLI Commands

| Command | Description | Common Flags |
| :--- | :--- | :--- |
| `terraform init` | Initializes directory, downloads provider plugins & modules. | `-reconfigure`, `-upgrade` |
| `terraform fmt` | Formats HCL code to HashiCorp standard format. | `-check`, `-recursive`, `-diff` |
| `terraform validate` | Validates syntax and data types locally. | |
| `terraform plan` | Generates a non-destructive execution plan. | `-out=plan.tfplan`, `-var="env=prod"` |
| `terraform apply` | Applies planned infrastructure changes in cloud APIs. | `-auto-approve`, `plan.tfplan` |
| `terraform destroy` | Destroys all managed infrastructure resources in state. | `-auto-approve` |

---

## 🔧 State Management Commands (`terraform state`)

- `terraform state list`: Lists all resources in the `.tfstate` file.
- `terraform state show <resource_name>`: Shows detailed attributes of a resource in state.
- `terraform state mv <old_name> <new_name>`: Renames or moves a resource in state without destroying it.
- `terraform state rm <resource_name>`: Removes a resource from state management.

---

## 🔀 CLI Workspace Commands (`terraform workspace`)

- `terraform workspace list`: Lists available CLI workspaces.
- `terraform workspace new <name>`: Creates a new workspace.
- `terraform workspace select <name>`: Switches active workspace.
- `terraform workspace show`: Displays current active workspace name.

---

## 🧮 HCL Built-in Functions

- **`length(list)`**: Returns number of elements. `length(["a", "b"]) -> 2`
- **`lookup(map, key, default)`**: Looks up a key in a map. `lookup({env = "dev"}, "env", "prod") -> "dev"`
- **`merge(map1, map2)`**: Merges multiple maps into one.
- **`element(list, index)`**: Returns element at given index wrapping around list length.
- **`file(path)`**: Reads contents of a file as a string.
- **`jsonencode(obj)` / `jsondecode(string)`**: Converts between HCL data objects and JSON strings.
