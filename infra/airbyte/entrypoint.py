from python_terraform import Terraform

if __name__ == "__main__":
    t = Terraform(working_dir='./')
    return_code, stdout, stderr = t.init()
    return_code, stdout, stderr = t.plan(var_file="prod.tfvars")
    return_code, stdout, stderr = t.apply()
