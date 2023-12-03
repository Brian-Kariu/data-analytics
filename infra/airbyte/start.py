import subprocess


# If your shell script has shebang, 
# you can omit shell=True argument.
print(subprocess.run(["./start.sh", 
				"arguments"]))
