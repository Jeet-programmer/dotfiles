# ~/.config/spaceship.zsh — clean & minimal Spaceship config

# ── Layout ────────────────────────────────────────────
SPACESHIP_PROMPT_ADD_NEWLINE=true      # blank line between commands
SPACESHIP_PROMPT_SEPARATE_LINE=true    # input on its own line
SPACESHIP_PROMPT_ASYNC=true

# Only the sections worth seeing. Language sections appear
# only inside matching projects, so they stay out of the way.
SPACESHIP_PROMPT_ORDER=(
  user          # only shown when root / over SSH
  host          # only shown over SSH
  dir
  git
  node
  bun
  python
  venv
  golang
  exec_time
  async
  line_sep
  jobs
  char
)

# ── Prompt character ──────────────────────────────────
SPACESHIP_CHAR_SYMBOL="❯ "
SPACESHIP_CHAR_COLOR_SUCCESS="green"
SPACESHIP_CHAR_COLOR_FAILURE="red"

# ── Directory ─────────────────────────────────────────
SPACESHIP_DIR_PREFIX=""
SPACESHIP_DIR_TRUNC=2                  # show last 2 folders
SPACESHIP_DIR_TRUNC_REPO=true          # start path at repo root
SPACESHIP_DIR_COLOR="cyan"

# ── Git ───────────────────────────────────────────────
SPACESHIP_GIT_PREFIX="on "
SPACESHIP_GIT_SYMBOL=" "
SPACESHIP_GIT_BRANCH_COLOR="magenta"
SPACESHIP_GIT_STATUS_PREFIX=" "
SPACESHIP_GIT_STATUS_SUFFIX=""
SPACESHIP_GIT_STATUS_COLOR="yellow"

# ── Languages (quiet, no "via" noise) ─────────────────
SPACESHIP_NODE_PREFIX=""
SPACESHIP_BUN_PREFIX=""
SPACESHIP_PYTHON_PREFIX=""
SPACESHIP_VENV_PREFIX=""
SPACESHIP_GOLANG_PREFIX=""
SPACESHIP_PACKAGE_SHOW=false

# ── Command duration ──────────────────────────────────
SPACESHIP_EXEC_TIME_SHOW=true
SPACESHIP_EXEC_TIME_ELAPSED=3          # only if it took > 3s
SPACESHIP_EXEC_TIME_PREFIX="took "
SPACESHIP_EXEC_TIME_COLOR="yellow"

# ── Misc ──────────────────────────────────────────────
SPACESHIP_USER_SHOW=needed
SPACESHIP_HOST_SHOW=ssh
SPACESHIP_DOCKER_SHOW=false            # hides the 🐳 v29.4.0 (orbstack) bit
SPACESHIP_DOCKER_CONTEXT_SHOW=false
SPACESHIP_JOBS_SHOW=true
