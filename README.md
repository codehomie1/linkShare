# Link Sharing App

A basic Ruby on Rails app for sharing links, commenting, and voting.

## Getting Started

1. **Requirements:**
   - Ruby
   - Rails
   - SQLite3

2. **Setup:**

   ```
   bundle install
   bin/rails db:create db:migrate
   ```

3. **Run the App:**

   ```
   bin/rails server
   ```

   Visit http://localhost:3000

4. **Run Tests:**
   ```
   bin/rails test
   ```

## Features

- User authentication
- Share links
- Comment on links
- Upvote/downvote links

##

## Database Schema

```mermaid
erDiagram
    User ||--o{ Link: creates
    User ||--o{ Comment: creates
    Link ||--o{ Comment: has
    User {
        string id PK
        string email
        string password
    }
    Link {
        string id PK
        string user_id FK
        string title
        string url
    }
    Comment {
        string id PK
        string user_id FK
        string link_id FK
        string body
    }
```
