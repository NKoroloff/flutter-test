# Test Task - Cash Drawer Page

Hey, this is a small test task for you.

You can use any UI you like, just copy the structure and basic logic like in the screenshot (attached in chat).

### What to use

- Use [GetX](https://pub.dev/packages/get) for controller/state (already installed)
- Use mock data only (no API needed)
- Split into: model / controller / view (folder modules already created)
- Don't worry about styling too much — just keep it simple and readable (like a list cards)

### What to show

- Title: "Manage Cash Drawer"
- Current balance (example: `$308.00`) — you can hardcode it or get it from the first entry in the mock data (optional).
- 3 buttons: `Deposit`, `Withdraw`, `Open Cash Drawer`
- Below: table or list with rows showing:
  - When (date and time)
  - Amount (`+`, `-`, or `"Open"`)
  - Balance
  - Note (just a button)
- Mock data is located in `assets/mock/cash_drawer_entries.json`
- You can load and parse it yourself to build the model

That’s all. Thanks :)
