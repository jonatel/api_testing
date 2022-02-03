
import notebook


c = get_config()  # noqa: F821
c.NotebookApp.ip = "0.0.0.0"
c.NotebookApp.port = 8080
c.NotebookApp.open_browser = False
c.NotebookApp.quit_button = False

# password
c.NotebookApp.password = notebook.auth.passwd("genesys")
