/// Enumeration of all the possible states for Note objects
/// 
/// active: The note is still being used
/// archived: The note is read only until its un-archived
/// deleted: The note is only viewable to the user in the "trash" view for some time.
enum NoteStatus { active, archived, deleted }

class Note {
  final int id;

  // The default status for Notes is "active"
  NoteStatus _noteStatus = NoteStatus.active;

  /// [title] variable is set to an empty string to prevent it from being null
  String title = '';

  /// Default constructor requires a unique ID
  Note(this.id);
}
