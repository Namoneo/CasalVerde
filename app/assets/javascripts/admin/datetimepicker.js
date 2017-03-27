// $(document).on('turbolinks:load', function() {
//   $('#datetimepicker-start input').click(function(event){
//   $('#datetimepicker-start ').data("DateTimePicker").show();
//   });
//   $('#datetimepicker-end input').click(function(event){
//   $('#datetimepicker-end ').data("DateTimePicker").show();
//   });
//   $(function () {
//     $('#datetimepicker-start').datetimepicker({
//       format: 'DD/MM/YYYY',
//       minDate:new Date(),
//     });
//     $('#datetimepicker-end').datetimepicker({
//       useCurrent: false, //Important! See issue #1075
//       format: "DD/MM/YYYY",
//       minDate:new Date()
//     });
//     $("#datetimepicker-start").on("dp.change", function (e) {
//       $('#datetimepicker-end').data("DateTimePicker").minDate(e.date);
//     });
//     $("#datetimepicker-end").on("dp.change", function (e) {
//       $('#datetimepicker-start').data("DateTimePicker").maxDate(e.date);
//     });
//   });
// });
