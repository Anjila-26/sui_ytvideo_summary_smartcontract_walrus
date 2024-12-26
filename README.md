# Walrus Module

This Move module demonstrates a **practice implementation** for managing file summaries on the blockchain.

## Overview

The `walrus` module provides the following functionalities:
- **Store File Summaries**: Attach a summary to a file and link it to the owner's address.
- **Retrieve File Summaries**: Fetch details such as owner, file data, and its summary.

## Usage Instructions
### 1. Compile the Module
` sui move build `

### 2. Publish the Module
`  sui client publish --gas-budget 10000000 --skip-dependency-verification  `

### 3. Add a File Summary
` sui client call --package <package_id> \
--module walrus --function add_summary \
--args <file_content_as_u8_vector> <summary_as_u8_vector> \
--gas-budget 10000000
`

## Future Plans
**Integration** : Expand the module to leverage the Walrus platform for decentralized file storage and sharing.
**Enhancements** : Add metadata support and advanced permission management.


