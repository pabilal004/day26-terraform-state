resource "local_file" "this" {
  filename = "${path.module}/${var.filename}"
  content  = var.content
}
