return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "marilari88/neotest-vitest",
    },
    opts = {
      adapters = {
        ["neotest-vitest"] = {
          -- Optional custom configuration
          -- vitestCommand = "npm test --",
        },
      },
    },
  },
}
