/**
 * Copyright 2020 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */


resource "null_resource" "fullload" {
  provisioner "local-exec" {
    command = "gsutil cp pipeline_staging.py europe-west1-scldemoenv-7dfed6b6-bucket"
  }
}

#resource "null_resource" "deltaload" {
#  provisioner "local-exec" {
#    command = "gsutil cp Pipeline_Delta_load.py ${var.bucket}"
#  }
#}

