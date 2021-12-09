# rumi-action
Repository for rumi Github actions

## Github Action

To setup your repository with rumi github action so that stats and details are automated on push, include the following code in .github/workflow/rumi.yaml:

```yaml
name: Rumi translation monitoring
on: push

jobs:
  rumi:
    runs-on: ubuntu-latest
    steps:
      - name: Clone target repository
        run: |
          git clone [url of the target repository]

      - name: Run Action 
        uses: rotationalio/rumi-actions@main # to be changed after rumi publication
        with: 
          which_rumi: "file" # "file" for file-based or "msg" for message-based
          repo_path: "path_to_repo"
          branch: "main"
          content_paths: "content1, content2, content3"
          extensions: ".md, .txt"
          target_files: "target1, target2, target3"
          pattern: "folder/"  # "folder/" or ".lang" depending on the setup of file-based project
          langs: "en fr zh ja" # You can specify the languages to monitor with language codes
          src_lang: "en"
          detail_src_lang: ""
          detail_tgt_lang: ""
          stats_mode: "True"
          details_mode: "True"
          use_cache: "True"
``` 

For more details on rumi, check out [rumi documentation](https://github.com/rotationalio/rumi) and [rumi blog post](https://rotational.io/blog/trans-monitor-i18n-proj/)