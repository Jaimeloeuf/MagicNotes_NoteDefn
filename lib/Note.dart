/// Enumeration of all the possible states for Note objects
///
/// active: The note is still being used
/// archived: The note is read only until its un-archived
/// deleted: The note is only viewable to the user in the "trash" view for some time.
enum NoteStatus { active, archived, deleted }

// class Note {
//   final int id;

//   // The default status for Notes is "active"
//   NoteStatus _noteStatus = NoteStatus.active;

//   /// [title] variable is set to an empty string to prevent it from being null
//   String title = '';

//   /// Default constructor requires a unique ID
//   Note(this.id);
// }

enum NoteType { BasicText, Markdown, List }

class Note {
  /// ID of a Note object is immutable after setting it.
  /// [id] property is a Unique ID across all notes of the user.
  final int id;

  /// Used to identify if the READ/WRITE access to the note
  /// The default status for Notes is "active"
  /// Can also be used for tagging and sorting through all the notes
  NoteStatus noteStatus = NoteStatus.active;

  /// Used to identify how the note will be shown in the view
  /// The default type is [NoteType.BasicText]
  NoteType noteType = NoteType.BasicText;

  /// Used to identify who owns this note
  User owner;

  /// [title] variable is set to an empty string to prevent it from being null
  String title = '';

  /// [content] variable is set to an empty string by default to prevent it from being null
  /// [content] variable have a dynamic type, depending on the [noteType] of this [note]
  var content = '';

  /// Default constructor requires a unique ID
  Note(this.id, {this.noteType: NoteType.BasicText});

  Note.basic(id) : Note(id, noteType: NoteType.BasicText);
  Note.markdown(id);
  Note.list(id);
}

main(List<String> args) {
  Note(10, noteType: NoteType.BasicText);
}