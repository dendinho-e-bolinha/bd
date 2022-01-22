# bd
Our project for the Curricular Unit of Bases de Dados

<br>

# Order
### Term

```sql
ORDER BY ..., Term.startDate DESC, Term.name ASC, ...;
```

### Subject

```sql
ORDER BY ..., Subject.name ASC, ...;
```

### Task

```sql
ORDER BY ..., Task.name ASC, ...;
```

### Period

```sql
ORDER BY ..., case
        when Period.weekday = 'monday' then 1
        when Period.weekday = 'tuesday' then 2
        when Period.weekday = 'wednesday' then 3
        when Period.weekday = 'thursday' then 4
        when Period.weekday = 'friday' then 5
        when Period.weekday = 'saturday' then 6
        when Period.weekday = 'sunday' then 7
    end ASC, Period.startTime ASC, ...;
```

### Professor

```sql
ORDER BY ..., Professor.name ASC, ...;
```

<br>

# Formatting

### startTime and endTime

```sql
SELECT ..., strftime('%Hh%M', startTime) as startTime, strftime('%Hh%M', endTime) as endTime, ...;
```
### startDateTime and endDateTime

```sql
SELECT ..., strftime('%Y-%m-%d %Hh%M', startDateTime) as startDateTime, strftime('%Y-%m-%d %Hh%M', endDateTime) as endDateTime, ...;
```

### weekday

```sql
SELECT ..., upper(substring(weekday, 1, 1)) || lower(substring(weekday, 2)) as weekday, ...;