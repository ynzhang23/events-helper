# Heath Meet

## Objective

Users are able to create, join, and manage events through the webpage, similar to [MeetUp](https://www.meetup.com/)

## Biggest takeaways

1. Passing options as locals when rendering partials.

Goal: Rendering a Join button within a partial only when needed

- Add the option as a locals

```erb
<%= render partial: "events/event", collection: @attend_events, locals: {show_join: true} %>
```

- Use it as a conditional in the partial
```ruby
<% if local_assigns[:show_join] %>

<div><%= link_to "Join Event!", event_attendances_path(event.id), data: { turbo_method: :post } %></div>

<% end %>
```

2. Understanding routes, paths and parameters, along with their compatibility with TurboDrive
3. Debugging on Rails using gem 'pry-byebug' and 'pry-rails'
