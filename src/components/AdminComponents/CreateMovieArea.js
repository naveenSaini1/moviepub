import { endpoints } from '@/constants/UrlConstants';
import { AdminContextApi } from '@/contextApi/AdminContextApi';
import fetchApi from '@/utils/FetchApi';
import { memo, useContext, useEffect, useState } from 'react';

function CreateMovie() {
  // Define states for form fields and selections
  const { token } = useContext(AdminContextApi)
  const [title, setTitle] = useState('');
  const [keyword, setKeyword] = useState('');

  const [year, setYear] = useState('');
  const [duration, setDuration] = useState('');
  const [releaseDate, setReleaseDate] = useState('');
  const [synopsis, setSynopsis] = useState('');
  const [cast, setCast] = useState('');
  const [categories, setCategories] = useState([]);  // Array for categories
  const [languages, setLanguages] = useState([]);  // Array for languages
  const [collections, setCollections] = useState([]);  // Array for collections
  const [imageFile, setImageFile] = useState(null); // state for storing the selected file
  const [availableCategories, setAvailableCategories] = useState([]); // state for storing the available categories
  const [availableLanguages, setAvailableLanguages] = useState([]); // state for storing the available languages
  const [availableCollections, setAvailableCollections] = useState([]); // state for storing the available collections
  const [availableYears, setAvailableYears] = useState([]); // state for storing the available years
  const [episodes, setEpisodes] = useState([{ name: '', url: '' }]);
  const [downloadName, setDownloadName] = useState('');
  const [smallDescription, setSmallDescription] = useState('');




  useEffect(() => {
    const abortController = new AbortController();
    const signal = abortController.signal;

    const fetchWithAbort = async (url, setter) => {
      try {
        const response = await fetch(url, { signal });
        const data = await response.json();
        setter(data);
      } catch (error) {
        if (error.name !== 'AbortError') {
          console.error('Fetch error:', error);
        }
      }
    };

    fetchWithAbort(`${endpoints.public.genres}/1`, setAvailableCategories);
    fetchWithAbort(`${endpoints.public.collections}/1`, setAvailableCollections);
    fetchWithAbort(`${endpoints.public.years}/1`, setAvailableYears);
    fetchWithAbort(`${endpoints.public.languages}/1`, setAvailableLanguages);

    return () => abortController.abort(); // Cleanup function to abort ongoing fetch requests
  }, []);


  const handleAddEpisode = () => {
    setEpisodes([...episodes, { name: '', url: '' }]);
  };
  const handleInputChange = (index, event) => {
    const newEpisodes = episodes.map((episode, i) => {
      if (i === index) {
        return { ...episode, [event.target.name]: event.target.value };
      }
      return episode;
    });
    setEpisodes(newEpisodes);
  };

  const handleRemoveEpisode = (index) => {
    setEpisodes(episodes.filter((_, i) => i !== index));
  };

  // hanlde the image function 

  const handleImageChange = (event) => {
    const file = event.target.files[0]; // Get the first selected file
    setImageFile(file); // Store the file in the state
  };
  // Handle checkbox change to add/remove items from the arrays
  const handleCheckboxChange = (event, setterFunction, selectedArray, id) => {

    const value = event.target.value;
    console.log(value, "  value", id, "  id", event.target.checked, "  event.target.checked");
    if (event.target.checked) {
      setterFunction([...selectedArray, id]);  // Add to array
    } else {
      setterFunction(selectedArray.filter((item) => item != id));  // Remove from array
    }
    console.log(selectedArray, "  selectedArray.filter((item) => item!== id)");
  };

  const handleSubmit = async (event) => {
    event.preventDefault();

    const formdata = new FormData();
    formdata.append("title", title);
    formdata.append("keywords", keyword);
    formdata.append("downloadName", downloadName);
    formdata.append("smalldescription",smallDescription);
    formdata.append("duration", duration);
    formdata.append("releaseDate", releaseDate);
    formdata.append("bigDescription", synopsis);
    formdata.append("casts", cast);
    formdata.append('genreNames', categories.join(","));  // Array data
    formdata.append('languageNames', languages.join(","));    // Array data
    formdata.append('collectionNames', collections.join(","));
    formdata.append('year', year);
    formdata.append("episodes", JSON.stringify(episodes));
    formdata.append('image', imageFile);  // Append the selected image file





    await fetchApi(`${endpoints.admin.movies}`, "POST", token.current, null, formdata);

    setTitle('');
    setYear('');
    setDuration('');
    setDownloadName('')
    setSmallDescription('');
    setKeyword('');
    setReleaseDate('');
    setSynopsis('');
    setCast('');
    setCategories([]);
    setLanguages([]);
    setCollections([]);
    setImageFile(null);
    setEpisodes([]);
    alert('Movie created successfully');
    


  };




  return (
    <div className="bg-white rounded-lg shadow-md p-6">
      <h2 className="text-2xl font-bold text-gray-800 mb-4">Create Movie</h2>
      <form onSubmit={handleSubmit} className="space-y-6">
        {/* Image */}
        {/* Image Upload */}
        <div>
          <label className="block text-sm font-medium text-gray-700">Upload Image</label>
          <input
            type="file"
            onChange={handleImageChange}
            className="mt-1 p-2 border border-gray-300 rounded-md w-full"
          />
        </div>

        {/* Title */}
        <div>
          <label className="block text-sm font-medium text-gray-700">Title</label>
          <input
            type="text"
            value={title}
            onChange={(e) => setTitle(e.target.value)}
            className="mt-1 p-2 border border-gray-300 rounded-md w-full"
          />
        </div>
  {/* download name */}
  <div>
          <label className="block text-sm font-medium text-gray-700">Download Name</label>
          <input
            type="text"
            value={downloadName}
            onChange={(e) => setDownloadName(e.target.value)}
            className="mt-1 p-2 border border-gray-300 rounded-md w-full"
          />
        </div>

        {/* small description */}
        <div>
          <label className="block text-sm font-medium text-gray-700">Small Description</label>
          <input
            type="text"
            value={smallDescription}
            onChange={(e) => setSmallDescription(e.target.value)}
            className="mt-1 p-2 border border-gray-300 rounded-md w-full"
          />
        </div>
  



         {/* Keywords */}
         <div>
          <label className="block text-sm font-medium text-gray-700">Keywords</label>
          <input
            type="text"
            value={keyword}
            onChange={(e) => setKeyword(e.target.value)}
            className="mt-1 p-2 border border-gray-300 rounded-md w-full"
          />
        </div>

        {/* Year */}
        <div>
          <label className="block text-sm font-medium text-gray-700">Year</label>
          <select
            value={year}
            onChange={(e) => setYear(e.target.value)}
            className="mt-1 block w-full p-2 border border-gray-300 rounded-md"
            required
          >
            <option value="">Select Year</option>
            {availableYears.map((yearOption) => (
              <option key={yearOption.yearId} value={yearOption.yearId}>
                {yearOption.name}
              </option>
            ))}
          </select>
        </div>

        {/* Duration */}
        <div>
          <label className="block text-sm font-medium text-gray-700">Duration</label>
          <input
            type="text"
            value={duration}
            onChange={(e) => setDuration(e.target.value)}
            className="mt-1 p-2 border border-gray-300 rounded-md w-full"
          />
        </div>

        {/* relase Date */}
        <div>
          <label className="block text-sm font-medium text-gray-700">Release Date</label>
          <input
            type="text"
            value={releaseDate}
            onChange={(e) => setReleaseDate(e.target.value)}
            className="mt-1 p-2 border border-gray-300 rounded-md w-full"
          />
        </div>

        {/* Synopsis */}
        <div>
          <label className="block text-sm font-medium text-gray-700">Synopsis</label>
          <textarea
            value={synopsis}
            onChange={(e) => setSynopsis(e.target.value)}
            className="mt-1 p-2 border border-gray-300 rounded-md w-full"
          />
        </div>

        {/* Cast */}
        <div>
          <label className="block text-sm font-medium text-gray-700">Cast</label>
          <input
            type="text"
            value={cast}
            onChange={(e) => setCast(e.target.value)}
            className="mt-1 p-2 border border-gray-300 rounded-md w-full"
          />
        </div>



        {/* Genre */}
        <div>
          <label className="block text-sm font-medium text-gray-700">Genre</label>
          <div className="space-y-2">
            {availableCategories.map((genre) => (
              <div key={genre.genreId} className="flex items-center">
                <input
                  type="checkbox"
                  value={genre.genreId}
                  onChange={(e) => handleCheckboxChange(e, setCategories, categories, genre.genreId)}
                  checked={categories.includes(genre.genreId)}
                  className="mr-2"
                />
                <span>{genre.name}</span>
              </div>
            ))}
          </div>
        </div>

        {/* Languages */}
        <div>
          <label className="block text-sm font-medium text-gray-700">Languages</label>
          <div className="space-y-2">
            {availableLanguages.map((language) => (
              <div key={language.languagesId} className="flex items-center">
                <input
                  type="checkbox"
                  value={language.languagesId}
                  onChange={(e) => handleCheckboxChange(e, setLanguages, languages, language.languagesId)}
                  checked={languages.includes(language.languagesId)}
                  className="mr-2"
                />
                <span>{language.name}</span>
              </div>
            ))}
          </div>
        </div>

        {/* Collections */}
        <div>
          <label className="block text-sm font-medium text-gray-700">Collections</label>
          <div className="space-y-2">
            {availableCollections.map((collection) => (
              <div key={collection.collectionsId} className="flex items-center">
                <input
                  type="checkbox"
                  value={collection.collectionsId}
                  onChange={(e) => handleCheckboxChange(e, setCollections, collections, collection.collectionsId)}
                  checked={collections.includes(collection.collectionsId)}
                  className="mr-2"
                />
                <span>{collection.name}</span>
              </div>
            ))}
          </div>
        </div>
        {/* add episodes */}
        <div className="p-4 max-w-2xl mx-auto bg-white rounded-lg shadow-lg">
          <h2 className="text-2xl font-semibold mb-4 text-center">Add Link</h2>
          {episodes.map((episode, index) => (
            <div key={index} className="flex items-center space-x-4 mb-4">
              <input
                type="text"
                name="name"
                placeholder="Link Name"
                value={episode.name}
                onChange={(e) => handleInputChange(index, e)}
                className="p-2 border border-gray-300 rounded-md flex-1"
              />
              <input
                type="text"
                name="url"
                placeholder="Link URL"
                value={episode.url}
                onChange={(e) => handleInputChange(index, e)}
                className="p-2 border border-gray-300 rounded-md flex-1"
              />
              <button
                type="button"
                onClick={() => handleRemoveEpisode(index)}
                className="bg-red-500 text-white px-4 py-2 rounded-md hover:bg-red-600"
              >
                Remove
              </button>
            </div>
          ))}
          <button
            type="button"
            onClick={handleAddEpisode}
            className="mt-4 bg-blue-500 text-white px-6 py-3 rounded-md hover:bg-blue-600"
          >
            Add Link
          </button>
        </div>

        {/* Submit Button */}
        <div>
          <button
            type="submit"
            className="px-6 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700"
          >
            Submit
          </button>
        </div>
      </form>
    </div>
  );
}

export default memo(CreateMovie);